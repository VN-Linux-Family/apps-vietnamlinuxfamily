// Install helpers: Flathub app ids, the install commands shown on the app page,
// and whether the visitor came from the CaramOS App Center.

// Same rule as flatpak itself, the API and public/cai.sh: 3 or more
// dot-separated parts of A-Z a-z 0-9 _, no part starts with a digit,
// "-" only in the last part, at most 255 characters. Example: org.gimp.GIMP
export const FLATPAK_ID_RE = /^(?=.{1,255}$)[A-Za-z_][A-Za-z0-9_]*(\.[A-Za-z_][A-Za-z0-9_]*)+\.[A-Za-z_][A-Za-z0-9_-]*$/

export function isValidFlatpakId(id) {
  return typeof id === 'string' && FLATPAK_ID_RE.test(id)
}

// What people paste into the form: the id itself, a Flathub page link
// (https://flathub.org/apps/org.gimp.GIMP, also /vi/apps/… and /apps/details/…),
// a .flatpakref link or "flatpak install flathub org.gimp.GIMP". Returns the id
// when one is found, otherwise the trimmed input (so validation can report it).
export function normalizeFlatpakId(input) {
  const s = (input || '').trim()
  const fromUrl = s.match(/flathub\.org\/(?:[a-z]{2}(?:[-_][A-Za-z]+)?\/)?apps\/(?:details\/)?([^/?#\s]+)/)
    || s.match(/\/appstream\/([^/?#\s]+)\.flatpakref/)
  if (fromUrl && isValidFlatpakId(fromUrl[1])) return fromUrl[1]
  const fromCommand = s.match(/^(?:sudo\s+)?flatpak\s+install\s+(?:-\S+\s+)*(?:flathub\s+)?(\S+)$/)
  if (fromCommand && isValidFlatpakId(fromCommand[1])) return fromCommand[1]
  return s
}

const SITE = 'https://apps.vietnamlinuxfamily.net'

// Opens the CaramOS App Center on this app (App Center releases after 0.3.1;
// CaramOS machines update the App Center by themselves every day).
export const caramosInstallUrl = (id) => `caramos-app://install/${id}`

// For every other distribution: public/cai.sh sets up Flatpak and Flathub
// when they are missing, then runs "flatpak install -y flathub <id>".
export const terminalInstallCommand = (id) => `curl -fsSL ${SITE}/cai.sh | bash -s ${id}`
export const installScriptUrl = `${SITE}/cai.sh`

// GNOME Software, KDE Discover and the Mint Software Manager open these.
export const flatpakrefUrl = (id) => `https://dl.flathub.org/repo/appstream/${id}.flatpakref`

// Linux Mint (and so CaramOS) blocks snapd, so "snap install …" fails there.
export function usesSnap(command) {
  return /(^|[\s;&|(])snap\s+install\b/.test(command || '')
}

export function isFlathubUrl(url) {
  try {
    return new URL(url).hostname === 'flathub.org'
  } catch {
    return false
  }
}

// The App Center's "Tìm thêm ứng dụng" link opens the site with ?from=caramos.
// Remember it so later visits put the CaramOS button first.
const FROM_CARAMOS_KEY = 'vnlf-from-caramos'

export function rememberCaramosVisit() {
  try {
    if (new URLSearchParams(window.location.search).get('from') === 'caramos') {
      localStorage.setItem(FROM_CARAMOS_KEY, '1')
    }
  } catch {
    // Storage blocked: the URL parameter still works for this page view.
  }
}

export function isFromCaramos() {
  try {
    return new URLSearchParams(window.location.search).get('from') === 'caramos'
      || localStorage.getItem(FROM_CARAMOS_KEY) === '1'
  } catch {
    return false
  }
}
