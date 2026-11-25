#!/bin/sh
# cai.sh: cài một ứng dụng từ Flathub (install one app from Flathub).
# https://apps.vietnamlinuxfamily.net/cai.sh, Vietnam Linux Family.
#
#   curl -fsSL https://apps.vietnamlinuxfamily.net/cai.sh | bash -s org.gimp.GIMP
#
# What it does:
#   1. checks that the argument is a valid Flathub app id (like org.gimp.GIMP);
#   2. if the flatpak command is missing, says so and installs the flatpak
#      package with apt, dnf, pacman or zypper (through sudo unless root);
#   3. if the Flathub repository is missing, adds it (through sudo unless root;
#      without sudo, flatpak asks for the password itself):
#        flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
#      or, if it is there but disabled: flatpak remote-modify --enable flathub
#   4. installs the app, as the user who runs the script:
#        flatpak install -y flathub <app id>
# It downloads nothing else and never runs its input as a command.
# Messages are in Vietnamese when LC_ALL, LC_MESSAGES or LANG starts with "vi",
# in English otherwise.
#
# Options:
#   -n, --dry-run   print the commands without running them
#   -h, --help      show the usage
#   ... | bash -s -- --dry-run org.gimp.GIMP
#
# Exit codes:
#   0 done, 1 not Linux, 2 wrong arguments or app id, 3 Flatpak could not be
#   installed, 4 Flathub could not be added, 5 the app could not be installed.

set -u

FLATHUB_REPO=https://dl.flathub.org/repo/flathub.flatpakrepo
SCRIPT_URL=https://apps.vietnamlinuxfamily.net/cai.sh

DRY_RUN=
SUDO=
FLATPAK_INSTALLED_NOW=
VI=
INPUT=/dev/null

# say VIETNAMESE ENGLISH: print one line in the user's language.
say() {
	if [ -n "$VI" ]; then
		printf '%s\n' "$1"
	else
		printf '%s\n' "$2"
	fi
}

# fail CODE VIETNAMESE ENGLISH: print the error and stop.
fail() {
	_code=$1
	say "Lỗi: $2" "Error: $3" >&2
	exit "$_code"
}

usage() {
	say "Cách dùng: curl -fsSL $SCRIPT_URL | bash -s <ID ứng dụng trên Flathub>" \
		"Usage: curl -fsSL $SCRIPT_URL | bash -s <Flathub app id>"
	say "Ví dụ:     curl -fsSL $SCRIPT_URL | bash -s org.gimp.GIMP" \
		"Example: curl -fsSL $SCRIPT_URL | bash -s org.gimp.GIMP"
	say "Chạy thử, chỉ in các lệnh: ... | bash -s -- --dry-run org.gimp.GIMP" \
		"Dry run, print the commands only: ... | bash -s -- --dry-run org.gimp.GIMP"
}

# printable TEXT: TEXT without control or non-ASCII characters, cut to 80
# characters, safe to show in an error message.
printable() {
	printf '%s' "$1" | tr -cd '[:alnum:]._ -' | cut -c1-80
}

# valid_app_id ID: the flatpak naming rule. Three or more parts separated by
# dots, made of A-Z a-z 0-9 and _, no part starts with a digit, "-" only in
# the last part (not first), 255 characters at most.
valid_app_id() {
	_id=$1
	[ -n "$_id" ] || return 1
	[ "${#_id}" -le 255 ] || return 1
	case $_id in
	*[!ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789._-]*) return 1 ;;
	.* | *. | *..*) return 1 ;;
	[0123456789-]* | *.[0123456789-]*) return 1 ;;
	*-*.*) return 1 ;;
	*.*.*) return 0 ;;
	esac
	return 1
}

# run COMMAND...: show the command, then run it (only show it with --dry-run).
# The command reads the terminal (INPUT), never stdin: piped into bash, stdin
# is the rest of this script. flatpak needs the terminal for its progress
# display: it asks the terminal for the cursor position and reads the answer;
# with stdin from /dev/null the answers ended up on the user's command line
# (";68R;68R;..." after the install).
run() {
	printf '+ %s\n' "$*"
	if [ -n "$DRY_RUN" ]; then
		return 0
	fi
	"$@" <"$INPUT"
}

# as_root COMMAND...: like run, through sudo unless we are root already.
as_root() {
	if [ -n "$SUDO" ]; then
		run sudo "$@"
	else
		run "$@"
	fi
}

# pick_sudo: use sudo when we are not root. Fails when there is no sudo.
pick_sudo() {
	SUDO=
	if [ "$(id -u)" = 0 ]; then
		return 0
	fi
	if command -v sudo >/dev/null 2>&1; then
		SUDO=sudo
		return 0
	fi
	return 1
}

install_flatpak() {
	if command -v apt-get >/dev/null 2>&1; then
		pm=apt
	elif command -v dnf >/dev/null 2>&1; then
		pm=dnf
	elif command -v pacman >/dev/null 2>&1; then
		pm=pacman
	elif command -v zypper >/dev/null 2>&1; then
		pm=zypper
	else
		fail 3 "máy chưa có Flatpak và không có apt, dnf, pacman hay zypper để cài. Hãy cài Flatpak theo https://flathub.org/setup rồi chạy lại lệnh này." \
			"Flatpak is not installed and none of apt, dnf, pacman or zypper was found. Install Flatpak as shown on https://flathub.org/setup, then run this command again."
	fi
	pick_sudo ||
		fail 3 "máy chưa có Flatpak. Cài Flatpak cần quyền quản trị nhưng máy không có sudo: hãy chạy lại lệnh bằng tài khoản root." \
			"Flatpak is not installed. Installing it needs administrator rights but sudo is not available: run the command again as root."
	if [ -n "$SUDO" ]; then
		say "Máy chưa có Flatpak. Sẽ cài gói flatpak bằng $pm, qua sudo: sudo có thể hỏi mật khẩu đăng nhập của bạn." \
			"Flatpak is not installed. Installing the flatpak package with $pm through sudo, which may ask for your login password."
	else
		say "Máy chưa có Flatpak. Sẽ cài gói flatpak bằng $pm." \
			"Flatpak is not installed. Installing the flatpak package with $pm."
	fi
	case $pm in
	apt)
		if ! as_root apt-get update; then
			say "Cảnh báo: apt-get update báo lỗi (thường do một nguồn phần mềm hỏng), vẫn thử cài tiếp." \
				"Warning: apt-get update failed (often one broken software source), trying to install anyway."
		fi
		as_root apt-get install -y flatpak
		;;
	dnf) as_root dnf install -y flatpak ;;
	pacman) as_root pacman -S --needed --noconfirm flatpak ;;
	zypper) as_root zypper --non-interactive install flatpak ;;
	esac || fail 3 "không cài được Flatpak bằng $pm. Xem thông báo ở trên." \
		"could not install Flatpak with $pm. See the messages above."
	if [ -z "$DRY_RUN" ] && ! command -v flatpak >/dev/null 2>&1; then
		fail 3 "đã cài gói flatpak nhưng vẫn không tìm thấy lệnh flatpak." \
			"the flatpak package was installed but the flatpak command is still missing."
	fi
	FLATPAK_INSTALLED_NOW=1
}

# has_flathub [--show-disabled]: is a remote called flathub configured?
has_flathub() {
	flatpak remotes "$@" --columns=name </dev/null 2>/dev/null | grep -Eq '^[[:space:]]*flathub[[:space:]]*$'
}

add_flathub() {
	if [ -z "$FLATPAK_INSTALLED_NOW" ] && has_flathub; then
		return 0
	fi
	# Without sudo, flatpak asks for the password itself (polkit).
	pick_sudo || :
	if [ -z "$FLATPAK_INSTALLED_NOW" ] && has_flathub --show-disabled; then
		say "Kho Flathub đang bị tắt. Sẽ bật lại${SUDO:+ (qua sudo)}." \
			"The Flathub repository is disabled. Enabling it${SUDO:+ (through sudo)}."
		as_root flatpak remote-modify --enable flathub ||
			fail 4 "không bật được kho Flathub." "could not enable the Flathub repository."
	else
		say "Thêm kho Flathub${SUDO:+ (qua sudo)}." "Adding the Flathub repository${SUDO:+ (through sudo)}."
		as_root flatpak remote-add --if-not-exists flathub "$FLATHUB_REPO" ||
			fail 4 "không thêm được kho Flathub. Kiểm tra kết nối mạng rồi thử lại." \
				"could not add the Flathub repository. Check the network connection and try again."
	fi
}

main() {
	case ${LC_ALL:-${LC_MESSAGES:-${LANG:-}}} in
	vi*) VI=1 ;;
	esac
	# The terminal, when there is one (not in a cron job, CI or a pipe
	# without a terminal): see run.
	if (exec </dev/tty) 2>/dev/null; then
		INPUT=/dev/tty
	fi

	while [ $# -gt 0 ]; do
		case $1 in
		-n | --dry-run) DRY_RUN=1 ;;
		-h | --help)
			usage
			exit 0
			;;
		--)
			shift
			break
			;;
		-*)
			usage >&2
			fail 2 "không hiểu tuỳ chọn \"$(printable "$1")\"." "unknown option \"$(printable "$1")\"."
			;;
		*) break ;;
		esac
		shift
	done

	if [ $# -ne 1 ]; then
		usage >&2
		fail 2 "cần đúng một ID ứng dụng trên Flathub." "exactly one Flathub app id is needed."
	fi
	app_id=$1
	if ! valid_app_id "$app_id"; then
		shown=$(printable "$app_id")
		fail 2 "\"$shown\" không phải ID ứng dụng Flathub. ID đúng trông như org.gimp.GIMP (xem phần cuối địa chỉ trang ứng dụng trên flathub.org)." \
			"\"$shown\" is not a Flathub app id. Ids look like org.gimp.GIMP (the last part of the app's flathub.org address)."
	fi

	if [ "$(uname -s)" != Linux ]; then
		fail 1 "lệnh này chỉ dùng trên Linux." "this command only works on Linux."
	fi

	if [ -n "$DRY_RUN" ]; then
		say "Chạy thử: chỉ in các lệnh, không cài gì." "Dry run: printing the commands, nothing is installed."
	fi

	if ! command -v flatpak >/dev/null 2>&1; then
		install_flatpak
	fi
	add_flathub

	say "Đang cài $app_id từ Flathub..." "Installing $app_id from Flathub..."
	run flatpak install -y flathub "$app_id" ||
		fail 5 "không cài được $app_id. Xem thông báo của flatpak ở trên." \
			"could not install $app_id. See the flatpak messages above."

	if [ -n "$DRY_RUN" ]; then
		return 0
	fi
	say "Xong. Mở ứng dụng từ menu, hoặc chạy: flatpak run $app_id" \
		"Done. Open it from the applications menu, or run: flatpak run $app_id"
	if [ -n "$FLATPAK_INSTALLED_NOW" ]; then
		say "Flatpak vừa được cài lần đầu: nếu ứng dụng chưa hiện trong menu, hãy đăng xuất rồi đăng nhập lại." \
			"Flatpak was just installed: if the app is not in the menu yet, log out and back in."
	fi
}

# Everything above only defines functions, so a download cut short runs nothing.
main "$@"
