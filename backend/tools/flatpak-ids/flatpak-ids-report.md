# flatpak_id proposals

Generated 2026-11-25 by `backend/tools/match-flatpak-ids.mjs` from https://apps-api.vietnamlinuxfamily.net/api (1002 apps, read-only) and the Flathub API (3431 apps listed today).

| Confidence | Apps | In flatpak-ids.sql |
|---|---|---|
| high | 961 | active UPDATE statements |
| uncertain | 13 | commented out, apply one by one after checking |
| none | 28 | not included |

By method: high/app-data 961, none/eol 26, none/search 2, uncertain/id-case 1, uncertain/renamed 11, uncertain/website 1.

- **app-data**: the app's own install command, Flathub link or slug names the id, and Flathub lists it today.
- **id-case** / **renamed**: the id in the app's data is no longer listed; Flathub has the same id in other letter case, or its end-of-life list names a successor.
- **name+website**, **name**, **website**: found by name in the Flathub catalogue or search; the website decides how sure it is.
- **eol**: end of life on Flathub with no successor. These apps keep their old `flatpak install` command; consider removing them or pointing them elsewhere.
- **search**: nothing on Flathub; the closest search hits are listed in the note.

"snap install" commands in the data: 0.

## Uncertain (13)

| App | Slug | Proposed flatpak_id | Method | Current install_command | Note |
|---|---|---|---|---|---|
| Desktop Plus | io.github.pol_rivero.github-desktop-plus | org.desktop_plus.desktop-plus | renamed | flatpak install flathub io.github.pol_rivero.github-desktop-plus | io.github.pol_rivero.github-desktop-plus no longer listed on Flathub; renamed to org.desktop_plus.desktop-plus |
| InputLeap | io.github.input_leap.input-leap | org.deskflow.deskflow | renamed | flatpak install flathub io.github.input_leap.input-leap | io.github.input_leap.input-leap no longer listed on Flathub; renamed to org.deskflow.deskflow |
| Jellyfin Media Player | com.github.iwalton3.jellyfin-media-player | org.jellyfin.JellyfinDesktop | renamed | flatpak install flathub com.github.iwalton3.jellyfin-media-player | com.github.iwalton3.jellyfin-media-player no longer listed on Flathub; renamed to org.jellyfin.JellyfinDesktop |
| Keypunch | dev.bragefuglseth.Keypunch | no.bragefuglseth.Keypunch | renamed | flatpak install flathub dev.bragefuglseth.Keypunch | dev.bragefuglseth.Keypunch no longer listed on Flathub; renamed to no.bragefuglseth.Keypunch |
| KWalletManager | org.kde.kwalletmanager5 | org.kde.kwalletmanager | renamed | flatpak install flathub org.kde.kwalletmanager5 | org.kde.kwalletmanager5 no longer listed on Flathub; renamed to org.kde.kwalletmanager |
| Mecalin | io.github.nacho.mecalin | io.github.nacho.teclas | renamed | flatpak install flathub io.github.nacho.mecalin | io.github.nacho.mecalin no longer listed on Flathub; renamed to io.github.nacho.teclas |
| Minder | com.github.phase1geo.minder | io.github.phase1geo.minder | renamed | flatpak install flathub com.github.phase1geo.minder | com.github.phase1geo.minder no longer listed on Flathub; renamed to io.github.phase1geo.minder |
| Nuclear | org.js.nuclear.Nuclear | com.nuclearplayer.Nuclear | renamed | flatpak install flathub org.js.nuclear.Nuclear | org.js.nuclear.Nuclear no longer listed on Flathub; renamed to com.nuclearplayer.Nuclear |
| Threema | ch.threema.threema-web-desktop | ch.threema.threema-desktop | website | flatpak install flathub ch.threema.threema-web-desktop | ch.threema.threema-web-desktop end of life on Flathub: "This version of Threema Desktop is no longer supported and won't receive any more updates. To keep using Threema as a Flatpak, please install Threema Desktop 2.0 with: flatpak install flathub ch.threema.threema-desktop"; "Threema Beta" has the same website but another name |
| Thunderbird | org.mozilla.Thunderbird | org.mozilla.thunderbird | id-case | flatpak install flathub org.mozilla.Thunderbird | org.mozilla.Thunderbird no longer listed on Flathub; org.mozilla.thunderbird differs only in letter case; Flathub's rename list points to org.mozilla.thunderbird_esr |
| Trilium Notes | com.github.zadam.trilium | org.triliumnotes.Trilium | renamed | flatpak install flathub com.github.zadam.trilium | com.github.zadam.trilium no longer listed on Flathub; renamed to org.triliumnotes.Trilium |
| Tuner | com.github.louis77.tuner | io.github.tuner_labs.tuner | renamed | flatpak install flathub com.github.louis77.tuner | com.github.louis77.tuner no longer listed on Flathub; renamed to io.github.tuner_labs.tuner |
| Video Downloader Tube2go | com.warlordsoftwares.tube2go | com.warlordsoftwares.media-downloader | renamed | flatpak install flathub com.warlordsoftwares.tube2go | com.warlordsoftwares.tube2go no longer listed on Flathub; renamed to com.warlordsoftwares.media-downloader |

## None (28)

| App | Slug | Proposed flatpak_id | Method | Current install_command | Note |
|---|---|---|---|---|---|
| Album Ripper | io.github.Ethanscharlie.albumripper |  | eol | flatpak install flathub io.github.Ethanscharlie.albumripper | io.github.Ethanscharlie.albumripper end of life on Flathub: "This application is no longer maintained."; closest Flathub search hits, none matching: nl.andreasknoben.Laser ("Laser"), org.mediaharbor.MediaHarbor ("MediaHarbor"), io.github.masakk1.press ("Press"), com.github.Flacon ("Flacon"), net.fhannenheim.musicfetch ("Musicfetch") |
| Black Box | com.raggesilver.BlackBox |  | eol | flatpak install flathub com.raggesilver.BlackBox | com.raggesilver.BlackBox end of life on Flathub: "This flatpak is no longer maintained."; closest Flathub search hits, none matching: uk.org.greenend.chiark.sgtatham.puzzles ("Simon Tatham's Portable Puzzle Collection"), io.github.N3kosempai.hetairos-ai ("Hetairos AI"), io.github.qwersyk.Newelle ("Newelle"), io.wavebox.Wavebox ("Wavebox"), io.gpt4all.gpt4all ("GPT4ALL") |
| Bombermaaan | com.github.bjaraujo.Bombermaaan |  | eol | flatpak install flathub com.github.bjaraujo.Bombermaaan | com.github.bjaraujo.Bombermaaan end of life on Flathub: "This game is no longer maintained, and the associated source code repository appears to have been deleted by the developers."; no Flathub search hits |
| Cartridges | page.kramo.Cartridges |  | eol | flatpak install flathub page.kramo.Cartridges | page.kramo.Cartridges end of life on Flathub: "This application is no longer maintained."; closest Flathub search hits, none matching: io.github.labbots.NiimPrintX ("NiimPrintX") |
| Cavalier | org.nickvision.cavalier |  | eol | flatpak install flathub org.nickvision.cavalier | org.nickvision.cavalier end of life on Flathub: "This flatpak is no longer maintained."; no Flathub search hits |
| ClamTk | com.gitlab.davem.ClamTk |  | eol | flatpak install flathub com.gitlab.davem.ClamTk | com.gitlab.davem.ClamTk end of life on Flathub: "This application is no longer maintained."; closest Flathub search hits, none matching: io.github.linx_systems.ClamUI ("ClamUI"), io.github.vmkspv.lenspect ("Lenspect"), com.virustotal.VirusTotalUploader ("VirusTotal Uploader"), io.kopia.KopiaUI ("Kopia"), io.github._0_don.clippy ("Clippy") |
| Clash for Windows | io.github.Fndroid.clash_for_windows |  | eol | flatpak install flathub io.github.Fndroid.clash_for_windows | io.github.Fndroid.clash_for_windows end of life on Flathub: "This application is no longer maintained, and the associated repository appears to have been deleted by the developers."; closest Flathub search hits, none matching: net.sourceforge.uhexen2.uhexen2 ("Hexen II: Hammer of Thyrion"), io.github.alper_han.crossmacro ("CrossMacro"), com.adilhanney.saber ("Saber"), org.dpsoftware.FireflyLuciferin ("Firefly Luciferin"), gg.norisk.NoRiskClientLauncherV3 ("NoRisk Client Launcher") |
| Denaro | org.nickvision.money |  | eol | flatpak install flathub org.nickvision.money | org.nickvision.money end of life on Flathub: "This flatpak is no longer maintained."; no Flathub search hits |
| Dotfiles Installer | com.ml4w.dotfilesinstaller |  | eol | flatpak install flathub com.ml4w.dotfilesinstaller | com.ml4w.dotfilesinstaller end of life on Flathub: "This application is no longer maintained, and the associated source code repository appears to have been archived by the developers."; closest Flathub search hits, none matching: io.kopia.KopiaUI ("Kopia"), com.gitlab.adnan338.Nixwriter ("Nixwriter"), com.ranfdev.DistroShelf ("DistroShelf"), dev.edfloreshz.CosmicTweaks ("Tweaks") |
| Fcitx5-lotus | fcitx5-lotus |  | search | Xem chi tiết ở link: https://github.com/LotusInputMethod/fcitx5-lotus/blob/main/INSTALL.md | closest Flathub search hits, none matching: org.fcitx.Fcitx5 ("Fcitx 5"), io.qt.Linguist ("Qt Linguist") |
| Feeds | org.gabmus.gfeeds |  | eol | flatpak install flathub org.gabmus.gfeeds | org.gabmus.gfeeds end of life on Flathub: "This flatpak is no longer maintained."; closest Flathub search hits, none matching: com.a_chacon.chaski ("Chaski"), io.github.martinrotter.rssguard ("RSS Guard"), com.rocksandpaper.syndic ("Syndic"), com.toolstack.Folio ("Folio"), com.ranfdev.Notify ("Notify") |
| Fotollection | fotollection |  | search | curl -fsSL https://fotollection.org/install.sh \| sh | closest Flathub search hits, none matching: de.zwarf.picplanner ("PicPlanner"), dev.levz.TinyImageFinder ("Tiny Image Finder"), io.github.adrienverge.PhotoCollage ("PhotoCollage"), de.gruetze_software.BingWallE ("BingWallE"), com.github.PopoutApps.popout3d ("Popout3D") |
| JupyterLab Desktop | org.jupyter.JupyterLab |  | eol | flatpak install flathub org.jupyter.JupyterLab | org.jupyter.JupyterLab end of life on Flathub: "As of August 2025, JupyterLab Desktop is not actively maintained and does not receive security bug fixes."; closest Flathub search hits, none matching: ai.lmstudio.lm-studio ("LM Studio"), io.wavebox.Wavebox ("Wavebox"), io.gpt4all.gpt4all ("GPT4ALL"), org.b3log.siyuan ("SiYuan"), io.liri.Text ("Liri Text") |
| Linux-Assistant | io.github.jean28518.Linux-Assistant |  | eol | flatpak install flathub io.github.jean28518.Linux-Assistant | io.github.jean28518.Linux-Assistant end of life on Flathub: "This flatpak is no longer maintained."; closest Flathub search hits, none matching: com.cassidyjames.butler ("Butler"), com.cherry_ai.CherryStudio ("Cherry Studio"), io.github.bkbilly.lnxlink ("LNXlink"), com.todoist.Todoist ("Todoist"), io.github.ashbuk.dabri ("Dabri") |
| Morphosis | garden.jamie.Morphosis |  | eol | flatpak install flathub garden.jamie.Morphosis | garden.jamie.Morphosis end of life on Flathub: "This application is no longer maintained, and the associated source code repository appears to have been archived by the developers."; closest Flathub search hits, none matching: dev.ibrahimcetin.reins ("Reins: Chat for Ollama"), com.soulfiremc.soulfire ("SoulFire"), io.github.tomluchowski.OpenDungeonsPlus ("OpenDungeonsPlus"), io.github.N3kosempai.hetairos-ai ("Hetairos AI") |
| Notejot | io.github.lainsce.Notejot |  | eol | flatpak install flathub io.github.lainsce.Notejot | io.github.lainsce.Notejot end of life on Flathub: "This application is no longer maintained."; closest Flathub search hits, none matching: fun.vnote.app.VNote ("VNote"), com.toolstack.Folio ("Folio"), net.daase.journable ("Journable"), io.github.nokse22.minitext ("Mini Text"), com.zoho.Notebook ("Notebook") |
| Oomox theme designer | com.github.themix_project.Oomox |  | eol | flatpak install flathub com.github.themix_project.Oomox | com.github.themix_project.Oomox end of life on Flathub: "This application is no longer maintained."; closest Flathub search hits, none matching: io.github.debasish_patra_1987.linuxthemestore ("Linux Theme Store"), io.github.thiefmd.themegenerator ("ThemeGenerator"), org.gnome.design.Typography ("Typography"), org.gnome.design.Palette ("Color Palette"), dev.edfloreshz.CosmicTweaks ("Tweaks") |
| PDF Slicer | com.github.junrrein.PDFSlicer |  | eol | flatpak install flathub com.github.junrrein.PDFSlicer | com.github.junrrein.PDFSlicer end of life on Flathub: "This application is no longer maintained. Please use PDF Arranger: https://pdfarranger.net/"; closest Flathub search hits, none matching: com.github.jeromerobert.pdfarranger ("PDF Arranger"), eu.scarpetta.PDFMixTool ("PDF Mix Tool"), com.github.muriloventuroso.pdftricks ("PDF Tricks"), com.github.mgropp.PdfJumbler ("PdfJumbler"), com.github.unrud.djpdf ("Scans to PDF") |
| Photo Editor | com.endlessm.photos |  | eol | flatpak install flathub com.endlessm.photos | com.endlessm.photos end of life on Flathub: "This application is no longer maintained."; closest Flathub search hits, none matching: me.ahola.aphototoollibre ("A Photo Tool (Libre)"), io.github.Duecki1.CalibRaw ("CalibRaw"), io.github.bitpainter75.ferrumpix ("FerrumPix"), com.ktechpit.pixelfx ("PixelFx"), org.filmulator.Filmulator ("Filmulator") |
| Photocrea | com.github.vikdevelop.photopea_app |  | eol | flatpak install flathub com.github.vikdevelop.photopea_app | com.github.vikdevelop.photopea_app end of life on Flathub: "This is an unofficial wrapper and the project has been discontinued. Please use the official web version directly at https://photopea.com."; closest Flathub search hits, none matching: io.github.adrienverge.PhotoCollage ("PhotoCollage"), com.kjxbyz.PicGuard ("PicGuard"), de.zwarf.picplanner ("PicPlanner"), com.github.PopoutApps.popout3d ("Popout3D"), io.github.aginies.watermark ("Watermark") |
| Quick Web Apps | dev.heppen.webapps |  | eol | flatpak install flathub dev.heppen.webapps | dev.heppen.webapps end of life on Flathub: "This application is no longer maintained."; closest Flathub search hits, none matching: org.pvermeer.WebAppHub ("Web App Hub"), de.breitbandmessung.Breitbandmessung ("Breitbandmessung"), in.org.dawn.wikilynx ("wikiLYNX"), io.wavebox.Wavebox ("Wavebox"), com.reqable.Reqable ("Reqable") |
| Remote Desktop Manager | com.devolutions.remotedesktopmanager |  | eol | flatpak install flathub com.devolutions.remotedesktopmanager | com.devolutions.remotedesktopmanager end of life on Flathub: "This application is no longer maintained. See flatpak installation guide here: https://docs.devolutions.net/rdm/getting-started/installation/client#linux"; closest Flathub search hits, none matching: io.github.vireshwali.Bing-r ("Bing-r"), org.kde.dolphin ("Dolphin"), org.filezillaproject.Filezilla ("FileZilla"), org.clementine_player.Clementine ("Clementine"), org.previewqt.PreviewQt ("PreviewQt") |
| SDRangel | org.sdrangel.SDRangel |  | eol | flatpak install flathub org.sdrangel.SDRangel | org.sdrangel.SDRangel end of life on Flathub: "This Flatpak is end-of-life. Please consider using the non-Flatpak version of SDRangel."; closest Flathub search hits, none matching: xyz.ketok.Speedtest ("Speedtest"), de.breitbandmessung.Breitbandmessung ("Breitbandmessung"), org.fcast.Sender ("FCast Sender"), io.emeric.toolblex ("toolBLEx"), com.luigi311.fitness-tracker ("Fitness Tracker") |
| Simplexity | br.com.wiselabs.simplexity |  | eol | flatpak install flathub br.com.wiselabs.simplexity | br.com.wiselabs.simplexity end of life on Flathub: "This application has been discontinued and is no longer maintained."; closest Flathub search hits, none matching: com.github.subhadeepjasu.pebbles ("Pebbles") |
| Televido | de.k_bo.Televido |  | eol | flatpak install flathub de.k_bo.Televido | de.k_bo.Televido end of life on Flathub: "This application is no longer maintained."; closest Flathub search hits, none matching: de.mediathekview.MediathekView ("MediathekView"), com.maplerain.telsis_translator_flutter ("Telsis language translator"), com.stremio.Service ("Stremio Service"), io.github.N3kosempai.hetairos-ai ("Hetairos AI") |
| xbox-cloud-gaming-electron | io.github.mandruis7.xbox-cloud-gaming-electron |  | eol | flatpak install flathub io.github.mandruis7.xbox-cloud-gaming-electron | io.github.mandruis7.xbox-cloud-gaming-electron end of life on Flathub: "This flatpak is no longer maintained."; closest Flathub search hits, none matching: io.github.hmlendea.geforcenow-electron ("GeForce NOW Electron"), io.github.Geocld.XStreamingDesktop ("XStreamingDesktop"), app.xemu.xemu ("xemu"), io.github.accessory.minus_games_gui ("Minus Games"), de.nicokimmel.shadowcast-electron ("shadowcast-electron") |
| XCA AI Chat | io.github.alfianlosari.GTKChatGPT |  | eol | flatpak install flathub io.github.alfianlosari.GTKChatGPT | io.github.alfianlosari.GTKChatGPT end of life on Flathub: "This flatpak is no longer maintained."; closest Flathub search hits, none matching: com.iche2.gai ("Gai"), io.github.qwersyk.Newelle ("Newelle"), org.koderoots.chatqt ("ChatQT"), io.github.N3kosempai.hetairos-ai ("Hetairos AI"), io.gpt4all.gpt4all ("GPT4ALL") |
| Zrythm | org.zrythm.Zrythm |  | eol | flatpak install flathub org.zrythm.Zrythm | org.zrythm.Zrythm end of life on Flathub: "This flatpak is no longer maintained."; closest Flathub search hits, none matching: io.github.yuxshao.ptcollab ("pxtone collab"), ir.NonFree.VCMusic ("VCMusic"), com.irealpro.irealpro ("iReal Pro"), io.github.dzheremi2.lrcmake-gtk ("Chronograph"), net.sonic_pi.SonicPi ("Sonic Pi") |

## High (961)

<details>
<summary>All 961 apps</summary>

| App | Slug | Proposed flatpak_id | Method | Current install_command | Note |
|---|---|---|---|---|---|
| 0 A.D. | com.play0ad.zeroad | com.play0ad.zeroad | app-data | flatpak install flathub com.play0ad.zeroad |  |
| 1Password | com.onepassword.OnePassword | com.onepassword.OnePassword | app-data | flatpak install flathub com.onepassword.OnePassword |  |
| 2048 | net.zdechov.app.x2048 | net.zdechov.app.x2048 | app-data | flatpak install flathub net.zdechov.app.x2048 |  |
| 4KTUBE | com.warlordsoftwares.youtube-downloader-4ktube | com.warlordsoftwares.youtube-downloader-4ktube | app-data | flatpak install flathub com.warlordsoftwares.youtube-downloader-4ktube |  |
| A Photo Tool (Libre) | me.ahola.aphototoollibre | me.ahola.aphototoollibre | app-data | flatpak install flathub me.ahola.aphototoollibre |  |
| AbiWord | com.abisource.AbiWord | com.abisource.AbiWord | app-data | flatpak install flathub com.abisource.AbiWord |  |
| Actual Budget | com.actualbudget.actual | com.actualbudget.actual | app-data | flatpak install flathub com.actualbudget.actual |  |
| Add Water | dev.qwery.AddWater | dev.qwery.AddWater | app-data | flatpak install flathub dev.qwery.AddWater |  |
| Adobe Flash Player | com.adobe.Flash-Player-Projector | com.adobe.Flash-Player-Projector | app-data | flatpak install flathub com.adobe.Flash-Player-Projector |  |
| Adobe Reader | com.adobe.Reader | com.adobe.Reader | app-data | flatpak install flathub com.adobe.Reader |  |
| AdwSteamGtk | io.github.Foldex.AdwSteamGtk | io.github.Foldex.AdwSteamGtk | app-data | flatpak install flathub io.github.Foldex.AdwSteamGtk |  |
| Aerion | io.github.hkdb.Aerion | io.github.hkdb.Aerion | app-data | flatpak install flathub io.github.hkdb.Aerion |  |
| Airshipper | net.veloren.airshipper | net.veloren.airshipper | app-data | flatpak install flathub net.veloren.airshipper |  |
| Aisleriot Solitaire | org.gnome.Aisleriot | org.gnome.Aisleriot | app-data | flatpak install flathub org.gnome.Aisleriot |  |
| Albion Online | com.albiononline.AlbionOnline | com.albiononline.AlbionOnline | app-data | flatpak install flathub com.albiononline.AlbionOnline |  |
| Alien Arena | org.alienarena.alienarena | org.alienarena.alienarena | app-data | flatpak install flathub org.alienarena.alienarena |  |
| Alpaca | com.jeffser.Alpaca | com.jeffser.Alpaca | app-data | flatpak install flathub com.jeffser.Alpaca |  |
| Amarok | org.kde.amarok | org.kde.amarok | app-data | flatpak install flathub org.kde.amarok |  |
| Amberol | io.bassi.Amberol | io.bassi.Amberol | app-data | flatpak install flathub io.bassi.Amberol |  |
| Amiberry | com.blitterstudio.amiberry | com.blitterstudio.amiberry | app-data | flatpak install flathub com.blitterstudio.amiberry |  |
| An Anime Game Launcher | moe.launcher.an-anime-game-launcher | moe.launcher.an-anime-game-launcher | app-data | flatpak install flathub moe.launcher.an-anime-game-launcher |  |
| Android Studio | com.google.AndroidStudio | com.google.AndroidStudio | app-data | flatpak install flathub com.google.AndroidStudio |  |
| Angry IP Scanner | org.angryip.ipscan | org.angryip.ipscan | app-data | flatpak install flathub org.angryip.ipscan |  |
| Anki | net.ankiweb.Anki | net.ankiweb.Anki | app-data | flatpak install flathub net.ankiweb.Anki |  |
| Antares SQL | it.fabiodistasio.AntaresSQL | it.fabiodistasio.AntaresSQL | app-data | flatpak install flathub it.fabiodistasio.AntaresSQL |  |
| AntiMicroX | io.github.antimicrox.antimicrox | io.github.antimicrox.antimicrox | app-data | flatpak install flathub io.github.antimicrox.antimicrox |  |
| AnyDesk | com.anydesk.Anydesk | com.anydesk.Anydesk | app-data | flatpak install flathub com.anydesk.Anydesk |  |
| Anytype | io.anytype.anytype | io.anytype.anytype | app-data | flatpak install flathub io.anytype.anytype |  |
| Aonsoku | io.github.victoralvesf.aonsoku | io.github.victoralvesf.aonsoku | app-data | flatpak install flathub io.github.victoralvesf.aonsoku |  |
| Apostrophe | org.gnome.gitlab.somas.Apostrophe | org.gnome.gitlab.somas.Apostrophe | app-data | flatpak install flathub org.gnome.gitlab.somas.Apostrophe |  |
| AppFlowy | io.appflowy.AppFlowy | io.appflowy.AppFlowy | app-data | flatpak install flathub io.appflowy.AppFlowy |  |
| AppImage Pool | io.github.prateekmedia.appimagepool | io.github.prateekmedia.appimagepool | app-data | flatpak install flathub io.github.prateekmedia.appimagepool |  |
| Ardour | org.ardour.Ardour | org.ardour.Ardour | app-data | flatpak install flathub org.ardour.Ardour |  |
| Arduino IDE | cc.arduino.arduinoide | cc.arduino.arduinoide | app-data | flatpak install flathub cc.arduino.arduinoide |  |
| Arduino IDE v2 | cc.arduino.IDE2 | cc.arduino.IDE2 | app-data | flatpak install flathub cc.arduino.IDE2 |  |
| ares | dev.ares.ares | dev.ares.ares | app-data | flatpak install flathub dev.ares.ares |  |
| Arianna | org.kde.arianna | org.kde.arianna | app-data | flatpak install flathub org.kde.arianna |  |
| Ark | org.kde.ark | org.kde.ark | app-data | flatpak install flathub org.kde.ark |  |
| ASCII Draw | io.github.nokse22.asciidraw | io.github.nokse22.asciidraw | app-data | flatpak install flathub io.github.nokse22.asciidraw |  |
| AstroMenace | com.viewizard.AstroMenace | com.viewizard.AstroMenace | app-data | flatpak install flathub com.viewizard.AstroMenace |  |
| Asunder | ca.littlesvr.asunder | ca.littlesvr.asunder | app-data | flatpak install flathub ca.littlesvr.asunder |  |
| ATLauncher | com.atlauncher.ATLauncher | com.atlauncher.ATLauncher | app-data | flatpak install flathub com.atlauncher.ATLauncher |  |
| Audacious | org.atheme.audacious | org.atheme.audacious | app-data | flatpak install flathub org.atheme.audacious |  |
| Audacity | org.audacityteam.Audacity | org.audacityteam.Audacity | app-data | flatpak install flathub org.audacityteam.Audacity |  |
| Audio Player | org.gnome.Decibels | org.gnome.Decibels | app-data | flatpak install flathub org.gnome.Decibels |  |
| Audio Sharing | de.haeckerfelix.AudioSharing | de.haeckerfelix.AudioSharing | app-data | flatpak install flathub de.haeckerfelix.AudioSharing |  |
| AudioRelay | net.audiorelay.AudioRelay | net.audiorelay.AudioRelay | app-data | flatpak install flathub net.audiorelay.AudioRelay |  |
| AudioTube | org.kde.audiotube | org.kde.audiotube | app-data | flatpak install flathub org.kde.audiotube |  |
| Aurynk | io.github.IshuSinghSE.aurynk | io.github.IshuSinghSE.aurynk | app-data | flatpak install flathub io.github.IshuSinghSE.aurynk |  |
| AusweisApp | de.bund.ausweisapp.ausweisapp2 | de.bund.ausweisapp.ausweisapp2 | app-data | flatpak install flathub de.bund.ausweisapp.ausweisapp2 |  |
| Authenticator | com.belmoussaoui.Authenticator | com.belmoussaoui.Authenticator | app-data | flatpak install flathub com.belmoussaoui.Authenticator |  |
| Avidemux | org.avidemux.Avidemux | org.avidemux.Avidemux | app-data | flatpak install flathub org.avidemux.Avidemux |  |
| Azahar | org.azahar_emu.Azahar | org.azahar_emu.Azahar | app-data | flatpak install flathub org.azahar_emu.Azahar |  |
| Azul Box | page.codeberg.tahoso.azul-box | page.codeberg.tahoso.azul-box | app-data | flatpak install flathub page.codeberg.tahoso.azul-box |  |
| Bambu Studio | com.bambulab.BambuStudio | com.bambulab.BambuStudio | app-data | flatpak install flathub com.bambulab.BambuStudio |  |
| Barcode Scanner | org.kde.qrca | org.kde.qrca | app-data | flatpak install flathub org.kde.qrca | Flathub calls it "Qrca" |
| Barrier | com.github.debauchee.barrier | com.github.debauchee.barrier | app-data | flatpak install flathub com.github.debauchee.barrier |  |
| Battery Info | com.her01n.BatteryInfo | com.her01n.BatteryInfo | app-data | flatpak install flathub com.her01n.BatteryInfo |  |
| Battle for Wesnoth | org.wesnoth.Wesnoth | org.wesnoth.Wesnoth | app-data | flatpak install flathub org.wesnoth.Wesnoth |  |
| Bazaar | io.github.kolunmi.Bazaar | io.github.kolunmi.Bazaar | app-data | flatpak install flathub io.github.kolunmi.Bazaar |  |
| Beaver Notes | com.beavernotes.beavernotes | com.beavernotes.beavernotes | app-data | flatpak install flathub com.beavernotes.beavernotes |  |
| Beekeeper Studio | io.beekeeperstudio.Studio | io.beekeeperstudio.Studio | app-data | flatpak install flathub io.beekeeperstudio.Studio |  |
| Betterbird | eu.betterbird.Betterbird | eu.betterbird.Betterbird | app-data | flatpak install flathub eu.betterbird.Betterbird |  |
| Beyond All Reason | info.beyondallreason.bar | info.beyondallreason.bar | app-data | flatpak install flathub info.beyondallreason.bar |  |
| BibleTime | info.bibletime.BibleTime | info.bibletime.BibleTime | app-data | flatpak install flathub info.bibletime.BibleTime |  |
| BiglyBT | com.biglybt.BiglyBT | com.biglybt.BiglyBT | app-data | flatpak install flathub com.biglybt.BiglyBT |  |
| Birdtray | com.ulduzsoft.Birdtray | com.ulduzsoft.Birdtray | app-data | flatpak install flathub com.ulduzsoft.Birdtray |  |
| Bitwarden | com.bitwarden.desktop | com.bitwarden.desktop | app-data | flatpak install flathub com.bitwarden.desktop |  |
| Bitwig Studio | com.bitwig.BitwigStudio | com.bitwig.BitwigStudio | app-data | flatpak install flathub com.bitwig.BitwigStudio |  |
| Blanket | com.rafaelmardojai.Blanket | com.rafaelmardojai.Blanket | app-data | flatpak install flathub com.rafaelmardojai.Blanket |  |
| BleachBit | org.bleachbit.BleachBit | org.bleachbit.BleachBit | app-data | flatpak install flathub org.bleachbit.BleachBit |  |
| Blender | org.blender.Blender | org.blender.Blender | app-data | flatpak install flathub org.blender.Blender |  |
| Blockbench | net.blockbench.Blockbench | net.blockbench.Blockbench | app-data | flatpak install flathub net.blockbench.Blockbench |  |
| Blue Recorder | sa.sy.bluerecorder | sa.sy.bluerecorder | app-data | flatpak install flathub sa.sy.bluerecorder |  |
| BlueBubbles | app.bluebubbles.BlueBubbles | app.bluebubbles.BlueBubbles | app-data | flatpak install flathub app.bluebubbles.BlueBubbles |  |
| Bluefish | nl.openoffice.bluefish | nl.openoffice.bluefish | app-data | flatpak install flathub nl.openoffice.bluefish |  |
| Bluejay | io.github.ebonjaeger.bluejay | io.github.ebonjaeger.bluejay | app-data | flatpak install flathub io.github.ebonjaeger.bluejay |  |
| BlueMail | net.blix.BlueMail | net.blix.BlueMail | app-data | flatpak install flathub net.blix.BlueMail |  |
| Boatswain | com.feaneron.Boatswain | com.feaneron.Boatswain | app-data | flatpak install flathub com.feaneron.Boatswain |  |
| Bobby | studio.planetpeanut.Bobby | studio.planetpeanut.Bobby | app-data | flatpak install flathub studio.planetpeanut.Bobby |  |
| BoilR | io.github.philipk.boilr | io.github.philipk.boilr | app-data | flatpak install flathub io.github.philipk.boilr |  |
| Bolt Launcher | com.adamcake.Bolt | com.adamcake.Bolt | app-data | flatpak install flathub com.adamcake.Bolt |  |
| Bootqt | io.github.giantpinkrobots.bootqt | io.github.giantpinkrobots.bootqt | app-data | flatpak install flathub io.github.giantpinkrobots.bootqt |  |
| Bottles | com.usebottles.bottles | com.usebottles.bottles | app-data | flatpak install flathub com.usebottles.bottles |  |
| BoxBuddy | io.github.dvlv.boxbuddyrs | io.github.dvlv.boxbuddyrs | app-data | flatpak install flathub io.github.dvlv.boxbuddyrs |  |
| Boxes | org.gnome.Boxes | org.gnome.Boxes | app-data | flatpak install flathub org.gnome.Boxes |  |
| Boxflat | io.github.lawstorant.boxflat | io.github.lawstorant.boxflat | app-data | flatpak install flathub io.github.lawstorant.boxflat |  |
| Boxy SVG | com.boxy_svg.BoxySVG | com.boxy_svg.BoxySVG | app-data | flatpak install flathub com.boxy_svg.BoxySVG |  |
| Brasero | org.gnome.Brasero | org.gnome.Brasero | app-data | flatpak install flathub org.gnome.Brasero |  |
| Brave | com.brave.Browser | com.brave.Browser | app-data | flatpak install flathub com.brave.Browser |  |
| Break Timer | org.gnome.BreakTimer | org.gnome.BreakTimer | app-data | flatpak install flathub org.gnome.BreakTimer |  |
| Brief | io.github.shonebinu.Brief | io.github.shonebinu.Brief | app-data | flatpak install flathub io.github.shonebinu.Brief |  |
| Brisk | io.github.BrisklyDev.Brisk | io.github.BrisklyDev.Brisk | app-data | flatpak install flathub io.github.BrisklyDev.Brisk |  |
| Bruno | com.usebruno.Bruno | com.usebruno.Bruno | app-data | flatpak install flathub com.usebruno.Bruno |  |
| bsnes | dev.bsnes.bsnes | dev.bsnes.bsnes | app-data | flatpak install flathub dev.bsnes.bsnes |  |
| Builder | org.gnome.Builder | org.gnome.Builder | app-data | flatpak install flathub org.gnome.Builder |  |
| Burp Suite Community | net.portswigger.BurpSuite-Community | net.portswigger.BurpSuite-Community | app-data | flatpak install flathub net.portswigger.BurpSuite-Community |  |
| Butler | com.cassidyjames.butler | com.cassidyjames.butler | app-data | flatpak install flathub com.cassidyjames.butler |  |
| Buzz | io.github.chidiwilliams.Buzz | io.github.chidiwilliams.Buzz | app-data | flatpak install flathub io.github.chidiwilliams.Buzz |  |
| Calculator | org.gnome.Calculator | org.gnome.Calculator | app-data | flatpak install flathub org.gnome.Calculator |  |
| Calculator | org.kde.kalk | org.kde.kalk | app-data | flatpak install flathub org.kde.kalk |  |
| Calculator | dev.edfloreshz.Calculator | dev.edfloreshz.Calculator | app-data | flatpak install flathub dev.edfloreshz.Calculator |  |
| Calendar | org.gnome.Calendar | org.gnome.Calendar | app-data | flatpak install flathub org.gnome.Calendar |  |
| calibre | com.calibre_ebook.calibre | com.calibre_ebook.calibre | app-data | flatpak install flathub com.calibre_ebook.calibre |  |
| Calligra | org.kde.calligra | org.kde.calligra | app-data | flatpak install flathub org.kde.calligra |  |
| Calls | org.gnome.Calls | org.gnome.Calls | app-data | flatpak install flathub org.gnome.Calls |  |
| Camera | org.gnome.Snapshot | org.gnome.Snapshot | app-data | flatpak install flathub org.gnome.Snapshot |  |
| Camera | io.github.cosmic_utils.camera | io.github.cosmic_utils.camera | app-data | flatpak install flathub io.github.cosmic_utils.camera |  |
| Cameractrls | hu.irl.cameractrls | hu.irl.cameractrls | app-data | flatpak install flathub hu.irl.cameractrls |  |
| Caprine | com.sindresorhus.Caprine | com.sindresorhus.Caprine | app-data | flatpak install flathub com.sindresorhus.Caprine |  |
| Carburetor | io.frama.tractor.carburetor | io.frama.tractor.carburetor | app-data | flatpak install flathub io.frama.tractor.carburetor |  |
| Cassette | space.rirusha.Cassette | space.rirusha.Cassette | app-data | flatpak install flathub space.rirusha.Cassette |  |
| Cauldron | it.dottorblaster.cauldron | it.dottorblaster.cauldron | app-data | flatpak install flathub it.dottorblaster.cauldron |  |
| Cavasik | io.github.TheWisker.Cavasik | io.github.TheWisker.Cavasik | app-data | flatpak install flathub io.github.TheWisker.Cavasik |  |
| Celluloid | io.github.celluloid_player.Celluloid | io.github.celluloid_player.Celluloid | app-data | flatpak install flathub io.github.celluloid_player.Celluloid |  |
| Cemu | info.cemu.Cemu | info.cemu.Cemu | app-data | flatpak install flathub info.cemu.Cemu |  |
| Censor | page.codeberg.censor.Censor | page.codeberg.censor.Censor | app-data | flatpak install flathub page.codeberg.censor.Censor |  |
| Characters | org.gnome.Characters | org.gnome.Characters | app-data | flatpak install flathub org.gnome.Characters |  |
| Chatterino | com.chatterino.chatterino | com.chatterino.chatterino | app-data | flatpak install flathub com.chatterino.chatterino |  |
| Cherry Studio | com.cherry_ai.CherryStudio | com.cherry_ai.CherryStudio | app-data | flatpak install flathub com.cherry_ai.CherryStudio |  |
| CherryTree | net.giuspen.cherrytree | net.giuspen.cherrytree | app-data | flatpak install flathub net.giuspen.cherrytree |  |
| chiaki-ng | io.github.streetpea.Chiaki4deck | io.github.streetpea.Chiaki4deck | app-data | flatpak install flathub io.github.streetpea.Chiaki4deck |  |
| Chromium Web Browser | org.chromium.Chromium | org.chromium.Chromium | app-data | flatpak install flathub org.chromium.Chromium |  |
| Ciano | com.github.robertsanseries.ciano | com.github.robertsanseries.ciano | app-data | flatpak install flathub com.github.robertsanseries.ciano |  |
| Cine | io.github.diegopvlk.Cine | io.github.diegopvlk.Cine | app-data | flatpak install flathub io.github.diegopvlk.Cine |  |
| Cinny | in.cinny.Cinny | in.cinny.Cinny | app-data | flatpak install flathub in.cinny.Cinny |  |
| ClamUI | io.github.linx_systems.ClamUI | io.github.linx_systems.ClamUI | app-data | flatpak install flathub io.github.linx_systems.ClamUI |  |
| Clapgrep | de.leopoldluley.Clapgrep | de.leopoldluley.Clapgrep | app-data | flatpak install flathub de.leopoldluley.Clapgrep |  |
| Clapper | com.github.rafostar.Clapper | com.github.rafostar.Clapper | app-data | flatpak install flathub com.github.rafostar.Clapper |  |
| Clementine Music Player | org.clementine_player.Clementine | org.clementine_player.Clementine | app-data | flatpak install flathub org.clementine_player.Clementine | Flathub calls it "Clementine" |
| Clicker | net.codelogistics.clicker | net.codelogistics.clicker | app-data | flatpak install flathub net.codelogistics.clicker |  |
| CLion | com.jetbrains.CLion | com.jetbrains.CLion | app-data | flatpak install flathub com.jetbrains.CLion |  |
| Clock | org.kde.kclock | org.kde.kclock | app-data | flatpak install flathub org.kde.kclock |  |
| Clocks | org.gnome.clocks | org.gnome.clocks | app-data | flatpak install flathub org.gnome.clocks |  |
| CloudCompare | org.cloudcompare.CloudCompare | org.cloudcompare.CloudCompare | app-data | flatpak install flathub org.cloudcompare.CloudCompare |  |
| CoBang | vn.hoabinh.quan.CoBang | vn.hoabinh.quan.CoBang | app-data | flatpak install flathub vn.hoabinh.quan.CoBang |  |
| Cockpit Client | org.cockpit_project.CockpitClient | org.cockpit_project.CockpitClient | app-data | flatpak install flathub org.cockpit_project.CockpitClient |  |
| Code::Blocks | org.codeblocks.codeblocks | org.codeblocks.codeblocks | app-data | flatpak install flathub org.codeblocks.codeblocks |  |
| Cohesion | io.github.brunofin.Cohesion | io.github.brunofin.Cohesion | app-data | flatpak install flathub io.github.brunofin.Cohesion |  |
| Collabora Office | com.collaboraoffice.Office | com.collaboraoffice.Office | app-data | flatpak install flathub com.collaboraoffice.Office |  |
| Collision | dev.geopjr.Collision | dev.geopjr.Collision | app-data | flatpak install flathub dev.geopjr.Collision |  |
| Color My Desktop | io.github.schwarzen.colormydesktop | io.github.schwarzen.colormydesktop | app-data | flatpak install flathub io.github.schwarzen.colormydesktop |  |
| Color Picker | nl.hjdskes.gcolor3 | nl.hjdskes.gcolor3 | app-data | flatpak install flathub nl.hjdskes.gcolor3 |  |
| ColorWall | com.ktechpit.colorwall | com.ktechpit.colorwall | app-data | flatpak install flathub com.ktechpit.colorwall |  |
| CoMaps | app.comaps.comaps | app.comaps.comaps | app-data | flatpak install flathub app.comaps.comaps |  |
| Connections | org.gnome.Connections | org.gnome.Connections | app-data | flatpak install flathub org.gnome.Connections |  |
| Constrict | io.github.wartybix.Constrict | io.github.wartybix.Constrict | app-data | flatpak install flathub io.github.wartybix.Constrict |  |
| Contacts | org.gnome.Contacts | org.gnome.Contacts | app-data | flatpak install flathub org.gnome.Contacts |  |
| Contour Terminal Emulator | org.contourterminal.Contour | org.contourterminal.Contour | app-data | flatpak install flathub org.contourterminal.Contour |  |
| Converseen | net.fasterland.converseen | net.fasterland.converseen | app-data | flatpak install flathub net.fasterland.converseen |  |
| Converter NOW: Unit Converter | io.github.ferraridamiano.ConverterNOW | io.github.ferraridamiano.ConverterNOW | app-data | flatpak install flathub io.github.ferraridamiano.ConverterNOW | Flathub calls it "Unit Converter" |
| coppwr | io.github.dimtpap.coppwr | io.github.dimtpap.coppwr | app-data | flatpak install flathub io.github.dimtpap.coppwr |  |
| CopyQ | com.github.hluk.copyq | com.github.hluk.copyq | app-data | flatpak install flathub com.github.hluk.copyq |  |
| CoreKeyboard | org.cubocore.CoreKeyboard | org.cubocore.CoreKeyboard | app-data | flatpak install flathub org.cubocore.CoreKeyboard |  |
| Cozy | com.github.geigi.cozy | com.github.geigi.cozy | app-data | flatpak install flathub com.github.geigi.cozy |  |
| CPU Info | com.kgurgul.cpuinfo | com.kgurgul.cpuinfo | app-data | flatpak install flathub com.kgurgul.cpuinfo |  |
| CPU-X | io.github.thetumultuousunicornofdarkness.cpu-x | io.github.thetumultuousunicornofdarkness.cpu-x | app-data | flatpak install flathub io.github.thetumultuousunicornofdarkness.cpu-x |  |
| Crow Translate | org.kde.CrowTranslate | org.kde.CrowTranslate | app-data | flatpak install flathub org.kde.CrowTranslate |  |
| Cryptomator | org.cryptomator.Cryptomator | org.cryptomator.Cryptomator | app-data | flatpak install flathub org.cryptomator.Cryptomator |  |
| Curtail | com.github.huluti.Curtail | com.github.huluti.Curtail | app-data | flatpak install flathub com.github.huluti.Curtail |  |
| Czkawka | com.github.qarmin.czkawka | com.github.qarmin.czkawka | app-data | flatpak install flathub com.github.qarmin.czkawka |  |
| darktable | org.darktable.Darktable | org.darktable.Darktable | app-data | flatpak install flathub org.darktable.Darktable |  |
| DataGrip | com.jetbrains.DataGrip | com.jetbrains.DataGrip | app-data | flatpak install flathub com.jetbrains.DataGrip |  |
| Datcord | io.github.gamingdoom.Datcord | io.github.gamingdoom.Datcord | app-data | flatpak install flathub io.github.gamingdoom.Datcord |  |
| DB Browser for SQLite | org.sqlitebrowser.sqlitebrowser | org.sqlitebrowser.sqlitebrowser | app-data | flatpak install flathub org.sqlitebrowser.sqlitebrowser |  |
| DBeaver Community | io.dbeaver.DBeaverCommunity | io.dbeaver.DBeaverCommunity | app-data | flatpak install flathub io.dbeaver.DBeaverCommunity |  |
| Dconf Editor | ca.desrt.dconf-editor | ca.desrt.dconf-editor | app-data | flatpak install flathub ca.desrt.dconf-editor |  |
| Decoder | com.belmoussaoui.Decoder | com.belmoussaoui.Decoder | app-data | flatpak install flathub com.belmoussaoui.Decoder |  |
| Deezer | dev.aunetx.deezer | dev.aunetx.deezer | app-data | flatpak install flathub dev.aunetx.deezer |  |
| Déjà Dup Backups | org.gnome.DejaDup | org.gnome.DejaDup | app-data | flatpak install flathub org.gnome.DejaDup |  |
| Delfin | cafe.avery.Delfin | cafe.avery.Delfin | app-data | flatpak install flathub cafe.avery.Delfin |  |
| Delta Chat | chat.delta.desktop | chat.delta.desktop | app-data | flatpak install flathub chat.delta.desktop |  |
| Delta Patcher | io.github.marco_calautti.DeltaPatcher | io.github.marco_calautti.DeltaPatcher | app-data | flatpak install flathub io.github.marco_calautti.DeltaPatcher |  |
| Deluge | org.deluge_torrent.deluge | org.deluge_torrent.deluge | app-data | flatpak install flathub org.deluge_torrent.deluge |  |
| Design | io.github.dubstar_04.design | io.github.dubstar_04.design | app-data | flatpak install flathub io.github.dubstar_04.design |  |
| Deskflow | org.deskflow.deskflow | org.deskflow.deskflow | app-data | flatpak install flathub org.deskflow.deskflow |  |
| DeSmuME | org.desmume.DeSmuME | org.desmume.DeSmuME | app-data | flatpak install flathub org.desmume.DeSmuME |  |
| Detwinner | com.neatdecisions.Detwinner | com.neatdecisions.Detwinner | app-data | flatpak install flathub com.neatdecisions.Detwinner |  |
| Dev Toolbox | me.iepure.devtoolbox | me.iepure.devtoolbox | app-data | flatpak install flathub me.iepure.devtoolbox |  |
| DevilutionX | org.diasurgical.DevilutionX | org.diasurgical.DevilutionX | app-data | flatpak install flathub org.diasurgical.DevilutionX |  |
| Dialect | app.drey.Dialect | app.drey.Dialect | app-data | flatpak install flathub app.drey.Dialect |  |
| digiKam | org.kde.digikam | org.kde.digikam | app-data | flatpak install flathub org.kde.digikam |  |
| Dino | im.dino.Dino | im.dino.Dino | app-data | flatpak install flathub im.dino.Dino |  |
| Discord | com.discordapp.Discord | com.discordapp.Discord | app-data | flatpak install flathub com.discordapp.Discord |  |
| Discover Overlay | io.github.trigg.discover_overlay | io.github.trigg.discover_overlay | app-data | flatpak install flathub io.github.trigg.discover_overlay |  |
| Disk Usage Analyzer | org.gnome.baobab | org.gnome.baobab | app-data | flatpak install flathub org.gnome.baobab |  |
| DisplayCAL | net.displaycal.DisplayCAL | net.displaycal.DisplayCAL | app-data | flatpak install flathub net.displaycal.DisplayCAL |  |
| Dissent | so.libdb.dissent | so.libdb.dissent | app-data | flatpak install flathub so.libdb.dissent |  |
| DistroShelf | com.ranfdev.DistroShelf | com.ranfdev.DistroShelf | app-data | flatpak install flathub com.ranfdev.DistroShelf |  |
| DL: language lessons | ro.go.hmlendea.DL-Desktop | ro.go.hmlendea.DL-Desktop | app-data | flatpak install flathub ro.go.hmlendea.DL-Desktop |  |
| Document Scanner | org.gnome.SimpleScan | org.gnome.SimpleScan | app-data | flatpak install flathub org.gnome.SimpleScan |  |
| Document Viewer | org.gnome.Papers | org.gnome.Papers | app-data | flatpak install flathub org.gnome.Papers |  |
| Document Viewer | org.gnome.Evince | org.gnome.Evince | app-data | flatpak install flathub org.gnome.Evince |  |
| Dolphin | org.kde.dolphin | org.kde.dolphin | app-data | flatpak install flathub org.kde.dolphin |  |
| Dolphin Emulator | org.DolphinEmu.dolphin-emu | org.DolphinEmu.dolphin-emu | app-data | flatpak install flathub org.DolphinEmu.dolphin-emu |  |
| DOSBox Staging | io.github.dosbox-staging | io.github.dosbox-staging | app-data | flatpak install flathub io.github.dosbox-staging |  |
| DOSBox-X | com.dosbox_x.DOSBox-X | com.dosbox_x.DOSBox-X | app-data | flatpak install flathub com.dosbox_x.DOSBox-X |  |
| Dr. Robotnik's Ring Racers | org.kartkrew.RingRacers | org.kartkrew.RingRacers | app-data | flatpak install flathub org.kartkrew.RingRacers |  |
| Dragon Player | org.kde.dragonplayer | org.kde.dragonplayer | app-data | flatpak install flathub org.kde.dragonplayer |  |
| draw.io | com.jgraph.drawio.desktop | com.jgraph.drawio.desktop | app-data | flatpak install flathub com.jgraph.drawio.desktop |  |
| Drawing | com.github.maoschanz.drawing | com.github.maoschanz.drawing | app-data | flatpak install flathub com.github.maoschanz.drawing |  |
| Dropbox | com.dropbox.Client | com.dropbox.Client | app-data | flatpak install flathub com.dropbox.Client |  |
| Drum Machine | io.github.revisto.drum-machine | io.github.revisto.drum-machine | app-data | flatpak install flathub io.github.revisto.drum-machine |  |
| Dune 3D | org.dune3d.dune3d | org.dune3d.dune3d | app-data | flatpak install flathub org.dune3d.dune3d |  |
| Ear Tag | app.drey.EarTag | app.drey.EarTag | app-data | flatpak install flathub app.drey.EarTag |  |
| Earbud manager for Galaxy Buds | me.timschneeberger.GalaxyBudsClient | me.timschneeberger.GalaxyBudsClient | app-data | flatpak install flathub me.timschneeberger.GalaxyBudsClient |  |
| Easy Effects | com.github.wwmm.easyeffects | com.github.wwmm.easyeffects | app-data | flatpak install flathub com.github.wwmm.easyeffects |  |
| Easyflatpak | org.dupot.easyflatpak | org.dupot.easyflatpak | app-data | flatpak install flathub org.dupot.easyflatpak |  |
| EasyTAG | org.gnome.EasyTAG | org.gnome.EasyTAG | app-data | flatpak install flathub org.gnome.EasyTAG |  |
| Eclipse IDE for Java Developers | org.eclipse.Java | org.eclipse.Java | app-data | flatpak install flathub org.eclipse.Java |  |
| EcoTubeHQ | io.github.ecotubehq.player | io.github.ecotubehq.player | app-data | flatpak install flathub io.github.ecotubehq.player |  |
| ElectronMail | com.github.vladimiry.ElectronMail | com.github.vladimiry.ElectronMail | app-data | flatpak install flathub com.github.vladimiry.ElectronMail |  |
| Element | im.riot.Riot | im.riot.Riot | app-data | flatpak install flathub im.riot.Riot |  |
| Elisa | org.kde.elisa | org.kde.elisa | app-data | flatpak install flathub org.kde.elisa |  |
| Eloquent | re.sonny.Eloquent | re.sonny.Eloquent | app-data | flatpak install flathub re.sonny.Eloquent |  |
| Embellish | io.github.getnf.embellish | io.github.getnf.embellish | app-data | flatpak install flathub io.github.getnf.embellish |  |
| Emote | com.tomjwatson.Emote | com.tomjwatson.Emote | app-data | flatpak install flathub com.tomjwatson.Emote |  |
| Endless Sky | io.github.endless_sky.endless_sky | io.github.endless_sky.endless_sky | app-data | flatpak install flathub io.github.endless_sky.endless_sky |  |
| EngPlayer | io.github.falldaemon.engplayer | io.github.falldaemon.engplayer | app-data | flatpak install flathub io.github.falldaemon.engplayer |  |
| Ente Auth | io.ente.auth | io.ente.auth | app-data | flatpak install flathub io.ente.auth |  |
| Ente Photos | io.ente.photos | io.ente.photos | app-data | flatpak install flathub io.ente.photos |  |
| eOVPN | com.github.jkotra.eovpn | com.github.jkotra.eovpn | app-data | flatpak install flathub com.github.jkotra.eovpn |  |
| Epson Scan 2 | net.epson.epsonscan2 | net.epson.epsonscan2 | app-data | flatpak install flathub net.epson.epsonscan2 |  |
| Equibop | org.equicord.equibop | org.equicord.equibop | app-data | flatpak install flathub org.equicord.equibop |  |
| Errands | io.github.mrvladus.List | io.github.mrvladus.List | app-data | flatpak install flathub io.github.mrvladus.List |  |
| Euphonica | io.github.htkhiem.Euphonica | io.github.htkhiem.Euphonica | app-data | flatpak install flathub io.github.htkhiem.Euphonica |  |
| Evolution | org.gnome.Evolution | org.gnome.Evolution | app-data | flatpak install flathub org.gnome.Evolution |  |
| Examine | io.github.cosmic_utils.Examine | io.github.cosmic_utils.Examine | app-data | flatpak install flathub io.github.cosmic_utils.Examine |  |
| Exhibit | io.github.nokse22.Exhibit | io.github.nokse22.Exhibit | app-data | flatpak install flathub io.github.nokse22.Exhibit |  |
| Extension Manager | com.mattjakeman.ExtensionManager | com.mattjakeman.ExtensionManager | app-data | flatpak install flathub com.mattjakeman.ExtensionManager |  |
| Extensions | org.gnome.Extensions | org.gnome.Extensions | app-data | flatpak install flathub org.gnome.Extensions |  |
| Extreme Tux Racer | net.sourceforge.ExtremeTuxRacer | net.sourceforge.ExtremeTuxRacer | app-data | flatpak install flathub net.sourceforge.ExtremeTuxRacer |  |
| Eye of GNOME | org.gnome.eog | org.gnome.eog | app-data | flatpak install flathub org.gnome.eog |  |
| Eyedropper | com.github.finefindus.eyedropper | com.github.finefindus.eyedropper | app-data | flatpak install flathub com.github.finefindus.eyedropper |  |
| Falkon | org.kde.falkon | org.kde.falkon | app-data | flatpak install flathub org.kde.falkon |  |
| Fan Control | io.github.wiiznokes.fan-control | io.github.wiiznokes.fan-control | app-data | flatpak install flathub io.github.wiiznokes.fan-control |  |
| Fastmail | com.fastmail.Fastmail | com.fastmail.Fastmail | app-data | flatpak install flathub com.fastmail.Fastmail |  |
| Faugus Launcher | io.github.Faugus.faugus-launcher | io.github.Faugus.faugus-launcher | app-data | flatpak install flathub io.github.Faugus.faugus-launcher | Flathub calls it "Faugus" |
| Fcitx 5 | org.fcitx.Fcitx5 | org.fcitx.Fcitx5 | app-data | flatpak install flathub org.fcitx.Fcitx5 |  |
| Fedora Media Writer | org.fedoraproject.MediaWriter | org.fedoraproject.MediaWriter | app-data | flatpak install flathub org.fedoraproject.MediaWriter |  |
| Ferdium | org.ferdium.Ferdium | org.ferdium.Ferdium | app-data | flatpak install flathub org.ferdium.Ferdium |  |
| Ferrite | io.github.olaproeis.Ferrite | io.github.olaproeis.Ferrite | app-data | flatpak install flathub io.github.olaproeis.Ferrite |  |
| FFaudioConverter | com.github.Bleuzen.FFaudioConverter | com.github.Bleuzen.FFaudioConverter | app-data | flatpak install flathub com.github.Bleuzen.FFaudioConverter |  |
| Field Monitor | de.capypara.FieldMonitor | de.capypara.FieldMonitor | app-data | flatpak install flathub de.capypara.FieldMonitor |  |
| Fightcade | com.fightcade.Fightcade | com.fightcade.Fightcade | app-data | flatpak install flathub com.fightcade.Fightcade |  |
| File Manager | com.expidusos.file_manager | com.expidusos.file_manager | app-data | flatpak install flathub com.expidusos.file_manager |  |
| File Roller | org.gnome.FileRoller | org.gnome.FileRoller | app-data | flatpak install flathub org.gnome.FileRoller |  |
| File Shredder | com.github.ADBeveridge.Raider | com.github.ADBeveridge.Raider | app-data | flatpak install flathub com.github.ADBeveridge.Raider |  |
| Filelight | org.kde.filelight | org.kde.filelight | app-data | flatpak install flathub org.kde.filelight |  |
| FileZilla | org.filezillaproject.Filezilla | org.filezillaproject.Filezilla | app-data | flatpak install flathub org.filezillaproject.Filezilla |  |
| Finamp | com.unicornsonlsd.finamp | com.unicornsonlsd.finamp | app-data | flatpak install flathub com.unicornsonlsd.finamp |  |
| FireDragon | org.garudalinux.firedragon | org.garudalinux.firedragon | app-data | flatpak install flathub org.garudalinux.firedragon |  |
| Firefox | org.mozilla.firefox | org.mozilla.firefox | app-data | flatpak install flathub org.mozilla.firefox |  |
| Firestorm Viewer | org.firestormviewer.FirestormViewer | org.firestormviewer.FirestormViewer | app-data | flatpak install flathub org.firestormviewer.FirestormViewer |  |
| Firmware | org.gnome.Firmware | org.gnome.Firmware | app-data | flatpak install flathub org.gnome.Firmware |  |
| Flacon | com.github.Flacon | com.github.Flacon | app-data | flatpak install flathub com.github.Flacon |  |
| Flameshot | org.flameshot.Flameshot | org.flameshot.Flameshot | app-data | flatpak install flathub org.flameshot.Flameshot |  |
| Flatseal | com.github.tchx84.Flatseal | com.github.tchx84.Flatseal | app-data | flatpak install flathub com.github.tchx84.Flatseal |  |
| Flatsweep | io.github.giantpinkrobots.flatsweep | io.github.giantpinkrobots.flatsweep | app-data | flatpak install flathub io.github.giantpinkrobots.flatsweep |  |
| FlightGear | org.flightgear.FlightGear | org.flightgear.FlightGear | app-data | flatpak install flathub org.flightgear.FlightGear |  |
| Floorp | one.ablaze.floorp | one.ablaze.floorp | app-data | flatpak install flathub one.ablaze.floorp |  |
| Flowblade | io.github.jliljebl.Flowblade | io.github.jliljebl.Flowblade | app-data | flatpak install flathub io.github.jliljebl.Flowblade |  |
| FluffyChat | im.fluffychat.Fluffychat | im.fluffychat.Fluffychat | app-data | flatpak install flathub im.fluffychat.Fluffychat | Flathub calls it "FluffyChat Matrix Messenger" |
| Flycast | org.flycast.Flycast | org.flycast.Flycast | app-data | flatpak install flathub org.flycast.Flycast |  |
| FocusWriter | org.gottcode.FocusWriter | org.gottcode.FocusWriter | app-data | flatpak install flathub org.gottcode.FocusWriter |  |
| Foliate | com.github.johnfactotum.Foliate | com.github.johnfactotum.Foliate | app-data | flatpak install flathub com.github.johnfactotum.Foliate |  |
| Folio | com.toolstack.Folio | com.toolstack.Folio | app-data | flatpak install flathub com.toolstack.Folio |  |
| Font Downloader | org.gustavoperedo.FontDownloader | org.gustavoperedo.FontDownloader | app-data | flatpak install flathub org.gustavoperedo.FontDownloader |  |
| Fonts | org.gnome.font-viewer | org.gnome.font-viewer | app-data | flatpak install flathub org.gnome.font-viewer |  |
| Footage | io.gitlab.adhami3310.Footage | io.gitlab.adhami3310.Footage | app-data | flatpak install flathub io.gitlab.adhami3310.Footage |  |
| fooyin | org.fooyin.fooyin | org.fooyin.fooyin | app-data | flatpak install flathub org.fooyin.fooyin |  |
| Forecast | com.jwestall.Forecast | com.jwestall.Forecast | app-data | flatpak install flathub com.jwestall.Forecast |  |
| FormatLab | com.warlordsoftwares.formatlab | com.warlordsoftwares.formatlab | app-data | flatpak install flathub com.warlordsoftwares.formatlab |  |
| Fotema | app.fotema.Fotema | app.fotema.Fotema | app-data | flatpak install flathub app.fotema.Fotema |  |
| Fractal | org.gnome.Fractal | org.gnome.Fractal | app-data | flatpak install flathub org.gnome.Fractal |  |
| Fragments | de.haeckerfelix.Fragments | de.haeckerfelix.Fragments | app-data | flatpak install flathub de.haeckerfelix.Fragments |  |
| Franz | com.meetfranz.Franz | com.meetfranz.Franz | app-data | flatpak install flathub com.meetfranz.Franz |  |
| fre:ac | org.freac.freac | org.freac.freac | app-data | flatpak install flathub org.freac.freac |  |
| Fred TV | dev.fredol.open-tv | dev.fredol.open-tv | app-data | flatpak install flathub dev.fredol.open-tv |  |
| Free Download Manager | org.freedownloadmanager.Manager | org.freedownloadmanager.Manager | app-data | flatpak install flathub org.freedownloadmanager.Manager |  |
| FreeCAD | org.freecad.FreeCAD | org.freecad.FreeCAD | app-data | flatpak install flathub org.freecad.FreeCAD |  |
| FreeFileSync | org.freefilesync.FreeFileSync | org.freefilesync.FreeFileSync | app-data | flatpak install flathub org.freefilesync.FreeFileSync |  |
| Freeplane | org.freeplane.App | org.freeplane.App | app-data | flatpak install flathub org.freeplane.App |  |
| FreeRDP Client | com.freerdp.FreeRDP | com.freerdp.FreeRDP | app-data | flatpak install flathub com.freerdp.FreeRDP |  |
| FreeTube | io.freetubeapp.FreeTube | io.freetubeapp.FreeTube | app-data | flatpak install flathub io.freetubeapp.FreeTube |  |
| Fretboard | dev.bragefuglseth.Fretboard | dev.bragefuglseth.Fretboard | app-data | flatpak install flathub dev.bragefuglseth.Fretboard |  |
| Frog | com.github.tenderowl.frog | com.github.tenderowl.frog | app-data | flatpak install flathub com.github.tenderowl.frog |  |
| FSearch | io.github.cboxdoerfer.FSearch | io.github.cboxdoerfer.FSearch | app-data | flatpak install flathub io.github.cboxdoerfer.FSearch |  |
| FTB Electron App | dev.ftb.ftb-app | dev.ftb.ftb-app | app-data | flatpak install flathub dev.ftb.ftb-app |  |
| FurMark | com.geeks3d.furmark | com.geeks3d.furmark | app-data | flatpak install flathub com.geeks3d.furmark |  |
| Gabut Download Manager | com.github.gabutakut.gabutdm | com.github.gabutakut.gabutdm | app-data | flatpak install flathub com.github.gabutakut.gabutdm |  |
| Gaia Sky | space.gaiasky.GaiaSky | space.gaiasky.GaiaSky | app-data | flatpak install flathub space.gaiasky.GaiaSky |  |
| Gajim | org.gajim.Gajim | org.gajim.Gajim | app-data | flatpak install flathub org.gajim.Gajim |  |
| Gaphor | org.gaphor.Gaphor | org.gaphor.Gaphor | app-data | flatpak install flathub org.gaphor.Gaphor |  |
| Gapless | com.github.neithern.g4music | com.github.neithern.g4music | app-data | flatpak install flathub com.github.neithern.g4music |  |
| Gauge | io.github.josephmawa.Gauge | io.github.josephmawa.Gauge | app-data | flatpak install flathub io.github.josephmawa.Gauge |  |
| GCompris | org.kde.gcompris | org.kde.gcompris | app-data | flatpak install flathub org.kde.gcompris |  |
| GDevelop | io.gdevelop.ide | io.gdevelop.ide | app-data | flatpak install flathub io.gdevelop.ide |  |
| GDM Settings | io.github.realmazharhussain.GdmSettings | io.github.realmazharhussain.GdmSettings | app-data | flatpak install flathub io.github.realmazharhussain.GdmSettings |  |
| Geany | org.geany.Geany | org.geany.Geany | app-data | flatpak install flathub org.geany.Geany |  |
| Gear Lever | it.mijorus.gearlever | it.mijorus.gearlever | app-data | flatpak install flathub it.mijorus.gearlever |  |
| Geary | org.gnome.Geary | org.gnome.Geary | app-data | flatpak install flathub org.gnome.Geary |  |
| gedit | org.gnome.gedit | org.gnome.gedit | app-data | flatpak install flathub org.gnome.gedit |  |
| Geekbench 6 | com.geekbench.Geekbench6 | com.geekbench.Geekbench6 | app-data | flatpak install flathub com.geekbench.Geekbench6 |  |
| GeForce Infinity | io.github.astralvixen.geforce-infinity | io.github.astralvixen.geforce-infinity | app-data | flatpak install flathub io.github.astralvixen.geforce-infinity |  |
| GeForce NOW Electron | io.github.hmlendea.geforcenow-electron | io.github.hmlendea.geforcenow-electron | app-data | flatpak install flathub io.github.hmlendea.geforcenow-electron |  |
| Gelly | io.m51.Gelly | io.m51.Gelly | app-data | flatpak install flathub io.m51.Gelly |  |
| GeoGebra | org.geogebra.GeoGebra | org.geogebra.GeoGebra | app-data | flatpak install flathub org.geogebra.GeoGebra |  |
| geteduroam | app.eduroam.geteduroam | app.eduroam.geteduroam | app-data | flatpak install flathub app.eduroam.geteduroam |  |
| GHex | org.gnome.GHex | org.gnome.GHex | app-data | flatpak install flathub org.gnome.GHex |  |
| Ghidra | org.ghidra_sre.Ghidra | org.ghidra_sre.Ghidra | app-data | flatpak install flathub org.ghidra_sre.Ghidra |  |
| ghostwriter | org.kde.ghostwriter | org.kde.ghostwriter | app-data | flatpak install flathub org.kde.ghostwriter |  |
| gImageReader | io.github.manisandro.gImageReader | io.github.manisandro.gImageReader | app-data | flatpak install flathub io.github.manisandro.gImageReader |  |
| GitHub Desktop | io.github.shiftey.Desktop | io.github.shiftey.Desktop | app-data | flatpak install flathub io.github.shiftey.Desktop |  |
| GitKraken | com.axosoft.GitKraken | com.axosoft.GitKraken | app-data | flatpak install flathub com.axosoft.GitKraken |  |
| Gittyup | com.github.Murmele.Gittyup | com.github.Murmele.Gittyup | app-data | flatpak install flathub com.github.Murmele.Gittyup |  |
| GNOME Chess | org.gnome.Chess | org.gnome.Chess | app-data | flatpak install flathub org.gnome.Chess |  |
| GNOME Network Displays | org.gnome.NetworkDisplays | org.gnome.NetworkDisplays | app-data | flatpak install flathub org.gnome.NetworkDisplays |  |
| GNOME Sudoku | org.gnome.Sudoku | org.gnome.Sudoku | app-data | flatpak install flathub org.gnome.Sudoku |  |
| GNU Emacs | org.gnu.emacs | org.gnu.emacs | app-data | flatpak install flathub org.gnu.emacs |  |
| GNU Image Manipulation Program | org.gimp.GIMP | org.gimp.GIMP | app-data | flatpak install flathub org.gimp.GIMP |  |
| GNU Octave | org.octave.Octave | org.octave.Octave | app-data | flatpak install flathub org.octave.Octave |  |
| GnuCash | org.gnucash.GnuCash | org.gnucash.GnuCash | app-data | flatpak install flathub org.gnucash.GnuCash |  |
| Godot Engine | org.godotengine.Godot | org.godotengine.Godot | app-data | flatpak install flathub org.godotengine.Godot |  |
| Godots | io.github.MakovWait.Godots | io.github.MakovWait.Godots | app-data | flatpak install flathub io.github.MakovWait.Godots |  |
| Goodvibes | io.gitlab.Goodvibes | io.gitlab.Goodvibes | app-data | flatpak install flathub io.gitlab.Goodvibes |  |
| GoofCord | io.github.milkshiift.GoofCord | io.github.milkshiift.GoofCord | app-data | flatpak install flathub io.github.milkshiift.GoofCord |  |
| Google Chrome | com.google.Chrome | com.google.Chrome | app-data | flatpak install flathub com.google.Chrome |  |
| Google Chrome (unstable) | com.google.ChromeDev | com.google.ChromeDev | app-data | flatpak install flathub com.google.ChromeDev |  |
| Google Earth Pro | com.google.EarthPro | com.google.EarthPro | app-data | flatpak install flathub com.google.EarthPro |  |
| Gopeed | com.gopeed.Gopeed | com.gopeed.Gopeed | app-data | flatpak install flathub com.gopeed.Gopeed |  |
| Gopher64 | io.github.gopher64.gopher64 | io.github.gopher64.gopher64 | app-data | flatpak install flathub io.github.gopher64.gopher64 |  |
| Goverlay | io.github.benjamimgois.goverlay | io.github.benjamimgois.goverlay | app-data | flatpak install flathub io.github.benjamimgois.goverlay |  |
| GPT4ALL | io.gpt4all.gpt4all | io.gpt4all.gpt4all | app-data | flatpak install flathub io.gpt4all.gpt4all |  |
| GPU Screen Recorder | com.dec05eba.gpu_screen_recorder | com.dec05eba.gpu_screen_recorder | app-data | flatpak install flathub com.dec05eba.gpu_screen_recorder |  |
| GPU-Viewer | io.github.arunsivaramanneo.GPUViewer | io.github.arunsivaramanneo.GPUViewer | app-data | flatpak install flathub io.github.arunsivaramanneo.GPUViewer |  |
| Gqrx | dk.gqrx.gqrx | dk.gqrx.gqrx | app-data | flatpak install flathub dk.gqrx.gqrx |  |
| Gradia | be.alexandervanhee.gradia | be.alexandervanhee.gradia | app-data | flatpak install flathub be.alexandervanhee.gradia |  |
| Gramps | org.gramps_project.Gramps | org.gramps_project.Gramps | app-data | flatpak install flathub org.gramps_project.Gramps |  |
| Graphs | se.sjoerd.Graphs | se.sjoerd.Graphs | app-data | flatpak install flathub se.sjoerd.Graphs |  |
| Grayjay | app.grayjay.Grayjay | app.grayjay.Grayjay | app-data | flatpak install flathub app.grayjay.Grayjay |  |
| Greenlight | io.github.unknownskl.greenlight | io.github.unknownskl.greenlight | app-data | flatpak install flathub io.github.unknownskl.greenlight |  |
| gThumb Image Viewer | org.gnome.gThumb | org.gnome.gThumb | app-data | flatpak install flathub org.gnome.gThumb | Flathub calls it "Thumbnails" |
| GtkHash | org.gtkhash.gtkhash | org.gtkhash.gtkhash | app-data | flatpak install flathub org.gtkhash.gtkhash |  |
| GtkStressTesting | com.leinardi.gst | com.leinardi.gst | app-data | flatpak install flathub com.leinardi.gst |  |
| guitarix | org.guitarix.Guitarix | org.guitarix.Guitarix | app-data | flatpak install flathub org.guitarix.Guitarix |  |
| Gwenview | org.kde.gwenview | org.kde.gwenview | app-data | flatpak install flathub org.kde.gwenview |  |
| Haguichi | com.github.ztefn.haguichi | com.github.ztefn.haguichi | app-data | flatpak install flathub com.github.ztefn.haguichi |  |
| HakuNeko | io.github.hakuneko.HakuNeko | io.github.hakuneko.HakuNeko | app-data | flatpak install flathub io.github.hakuneko.HakuNeko |  |
| Halloy | org.squidowl.halloy | org.squidowl.halloy | app-data | flatpak install flathub org.squidowl.halloy |  |
| HandBrake | fr.handbrake.ghb | fr.handbrake.ghb | app-data | flatpak install flathub fr.handbrake.ghb |  |
| Hardware Probe | org.linux_hardware.hw-probe | org.linux_hardware.hw-probe | app-data | flatpak install flathub org.linux_hardware.hw-probe |  |
| Haruna | org.kde.haruna | org.kde.haruna | app-data | flatpak install flathub org.kde.haruna |  |
| Headlamp | io.kinvolk.Headlamp | io.kinvolk.Headlamp | app-data | flatpak install flathub io.kinvolk.Headlamp |  |
| Hedge Mod Manager | io.github.hedge_dev.hedgemodmanager | io.github.hedge_dev.hedgemodmanager | app-data | flatpak install flathub io.github.hedge_dev.hedgemodmanager |  |
| Helvum | org.pipewire.Helvum | org.pipewire.Helvum | app-data | flatpak install flathub org.pipewire.Helvum |  |
| Heroic | com.heroicgameslauncher.hgl | com.heroicgameslauncher.hgl | app-data | flatpak install flathub com.heroicgameslauncher.hgl |  |
| Hetairos AI | io.github.N3kosempai.hetairos-ai | io.github.N3kosempai.hetairos-ai | app-data | flatpak install flathub io.github.N3kosempai.hetairos-ai |  |
| Hidamari | io.github.jeffshee.Hidamari | io.github.jeffshee.Hidamari | app-data | flatpak install flathub io.github.jeffshee.Hidamari |  |
| High Tide | io.github.nokse22.high-tide | io.github.nokse22.high-tide | app-data | flatpak install flathub io.github.nokse22.high-tide |  |
| HomeBank | fr.free.Homebank | fr.free.Homebank | app-data | flatpak install flathub fr.free.Homebank |  |
| HydraPaper | org.gabmus.hydrapaper | org.gabmus.hydrapaper | app-data | flatpak install flathub org.gabmus.hydrapaper |  |
| HyperPlay | xyz.hyperplay.HyperPlay | xyz.hyperplay.HyperPlay | app-data | flatpak install flathub xyz.hyperplay.HyperPlay |  |
| i2pd | website.i2pd.i2pd | website.i2pd.i2pd | app-data | flatpak install flathub website.i2pd.i2pd |  |
| Icon Library | org.gnome.design.IconLibrary | org.gnome.design.IconLibrary | app-data | flatpak install flathub org.gnome.design.IconLibrary |  |
| Identity | org.gnome.gitlab.YaLTeR.Identity | org.gnome.gitlab.YaLTeR.Identity | app-data | flatpak install flathub org.gnome.gitlab.YaLTeR.Identity |  |
| Ignition | io.github.flattool.Ignition | io.github.flattool.Ignition | app-data | flatpak install flathub io.github.flattool.Ignition |  |
| Image Scan | com.github.utsushi.Utsushi | com.github.utsushi.Utsushi | app-data | flatpak install flathub com.github.utsushi.Utsushi |  |
| Image Viewer | org.gnome.Loupe | org.gnome.Loupe | app-data | flatpak install flathub org.gnome.Loupe |  |
| ImHex | net.werwolv.ImHex | net.werwolv.ImHex | app-data | flatpak install flathub net.werwolv.ImHex |  |
| Impression | io.gitlab.adhami3310.Impression | io.gitlab.adhami3310.Impression | app-data | flatpak install flathub io.gitlab.adhami3310.Impression |  |
| indiPDF | com.indomitusgroup.indipdf | com.indomitusgroup.indipdf | app-data | flatpak install flathub com.indomitusgroup.indipdf |  |
| Infinipaint | com.infinipaint.infinipaint | com.infinipaint.infinipaint | app-data | flatpak install flathub com.infinipaint.infinipaint |  |
| Inkscape | org.inkscape.Inkscape | org.inkscape.Inkscape | app-data | flatpak install flathub org.inkscape.Inkscape |  |
| Insomnia | rest.insomnia.Insomnia | rest.insomnia.Insomnia | app-data | flatpak install flathub rest.insomnia.Insomnia |  |
| Inspector | io.github.nokse22.inspector | io.github.nokse22.inspector | app-data | flatpak install flathub io.github.nokse22.inspector |  |
| IntelliJ IDEA | com.jetbrains.IntelliJ-IDEA-Ultimate | com.jetbrains.IntelliJ-IDEA-Ultimate | app-data | flatpak install flathub com.jetbrains.IntelliJ-IDEA-Ultimate |  |
| IntelliJ IDEA Open | com.jetbrains.IntelliJ-IDEA-Community | com.jetbrains.IntelliJ-IDEA-Community | app-data | flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community | Flathub calls it "IntelliJ IDEA OSS" |
| Iotas | org.gnome.World.Iotas | org.gnome.World.Iotas | app-data | flatpak install flathub org.gnome.World.Iotas |  |
| IP Lookup | io.github.bytezz.IPLookup | io.github.bytezz.IPLookup | app-data | flatpak install flathub io.github.bytezz.IPLookup |  |
| ISO Image Writer | org.kde.isoimagewriter | org.kde.isoimagewriter | app-data | flatpak install flathub org.kde.isoimagewriter |  |
| itch | io.itch.itch | io.itch.itch | app-data | flatpak install flathub io.itch.itch |  |
| JADX | com.github.skylot.jadx | com.github.skylot.jadx | app-data | flatpak install flathub com.github.skylot.jadx |  |
| JamesDSP | me.timschneeberger.jdsp4linux | me.timschneeberger.jdsp4linux | app-data | flatpak install flathub me.timschneeberger.jdsp4linux |  |
| Jami | net.jami.Jami | net.jami.Jami | app-data | flatpak install flathub net.jami.Jami |  |
| jamovi | org.jamovi.jamovi | org.jamovi.jamovi | app-data | flatpak install flathub org.jamovi.jamovi |  |
| Jan | ai.jan.Jan | ai.jan.Jan | app-data | flatpak install flathub ai.jan.Jan |  |
| JASP | org.jaspstats.JASP | org.jaspstats.JASP | app-data | flatpak install flathub org.jaspstats.JASP |  |
| jdMinecraftLauncher | page.codeberg.JakobDev.jdMinecraftLauncher | page.codeberg.JakobDev.jdMinecraftLauncher | app-data | flatpak install flathub page.codeberg.JakobDev.jdMinecraftLauncher |  |
| JDownloader | org.jdownloader.JDownloader | org.jdownloader.JDownloader | app-data | flatpak install flathub org.jdownloader.JDownloader |  |
| Jellyfin Desktop | org.jellyfin.JellyfinDesktop | org.jellyfin.JellyfinDesktop | app-data | flatpak install flathub org.jellyfin.JellyfinDesktop |  |
| Jellyfin MPV Shim | com.github.iwalton3.jellyfin-mpv-shim | com.github.iwalton3.jellyfin-mpv-shim | app-data | flatpak install flathub com.github.iwalton3.jellyfin-mpv-shim |  |
| Jellyfin Server | org.jellyfin.JellyfinServer | org.jellyfin.JellyfinServer | app-data | flatpak install flathub org.jellyfin.JellyfinServer |  |
| jExifToolGUI | io.github.hvdwofl.jExifToolGUI | io.github.hvdwofl.jExifToolGUI | app-data | flatpak install flathub io.github.hvdwofl.jExifToolGUI |  |
| Jitsi Meet | org.jitsi.jitsi-meet | org.jitsi.jitsi-meet | app-data | flatpak install flathub org.jitsi.jitsi-meet |  |
| Joplin | net.cozic.joplin_desktop | net.cozic.joplin_desktop | app-data | flatpak install flathub net.cozic.joplin_desktop |  |
| Junction | re.sonny.Junction | re.sonny.Junction | app-data | flatpak install flathub re.sonny.Junction |  |
| Jupii | net.mkiol.Jupii | net.mkiol.Jupii | app-data | flatpak install flathub net.mkiol.Jupii |  |
| Kaffeine | org.kde.kaffeine | org.kde.kaffeine | app-data | flatpak install flathub org.kde.kaffeine |  |
| Kalzium | org.kde.kalzium | org.kde.kalzium | app-data | flatpak install flathub org.kde.kalzium |  |
| Kamoso | org.kde.kamoso | org.kde.kamoso | app-data | flatpak install flathub org.kde.kamoso |  |
| Karere | io.github.tobagin.karere | io.github.tobagin.karere | app-data | flatpak install flathub io.github.tobagin.karere |  |
| Kasts | org.kde.kasts | org.kde.kasts | app-data | flatpak install flathub org.kde.kasts |  |
| Kate | org.kde.kate | org.kde.kate | app-data | flatpak install flathub org.kde.kate |  |
| Kazumi | io.github.Predidit.Kazumi | io.github.Predidit.Kazumi | app-data | flatpak install flathub io.github.Predidit.Kazumi |  |
| KCalc | org.kde.kcalc | org.kde.kcalc | app-data | flatpak install flathub org.kde.kcalc |  |
| Kdenlive | org.kde.kdenlive | org.kde.kdenlive | app-data | flatpak install flathub org.kde.kdenlive |  |
| KDiskFree | org.kde.kdf | org.kde.kdf | app-data | flatpak install flathub org.kde.kdf |  |
| KDiskMark | io.github.jonmagon.kdiskmark | io.github.jonmagon.kdiskmark | app-data | flatpak install flathub io.github.jonmagon.kdiskmark |  |
| KeePassXC | org.keepassxc.KeePassXC | org.keepassxc.KeePassXC | app-data | flatpak install flathub org.keepassxc.KeePassXC |  |
| Kega Fusion | com.carpeludum.KegaFusion | com.carpeludum.KegaFusion | app-data | flatpak install flathub com.carpeludum.KegaFusion |  |
| KGet | org.kde.kget | org.kde.kget | app-data | flatpak install flathub org.kde.kget |  |
| KiCad | org.kicad.KiCad | org.kicad.KiCad | app-data | flatpak install flathub org.kicad.KiCad |  |
| Kid3 | org.kde.kid3 | org.kde.kid3 | app-data | flatpak install flathub org.kde.kid3 |  |
| Kiwix | org.kiwix.desktop | org.kiwix.desktop | app-data | flatpak install flathub org.kiwix.desktop |  |
| Kleopatra | org.kde.kleopatra | org.kde.kleopatra | app-data | flatpak install flathub org.kde.kleopatra |  |
| Klia Store | io.github.N3kosempai.klia-store | io.github.N3kosempai.klia-store | app-data | flatpak install flathub io.github.N3kosempai.klia-store |  |
| KMahjongg | org.kde.kmahjongg | org.kde.kmahjongg | app-data | flatpak install flathub org.kde.kmahjongg |  |
| KMines | org.kde.kmines | org.kde.kmines | app-data | flatpak install flathub org.kde.kmines |  |
| KMyMoney | org.kde.kmymoney | org.kde.kmymoney | app-data | flatpak install flathub org.kde.kmymoney |  |
| Kodi | tv.kodi.Kodi | tv.kodi.Kodi | app-data | flatpak install flathub tv.kodi.Kodi |  |
| Kolibri | org.learningequality.Kolibri | org.learningequality.Kolibri | app-data | flatpak install flathub org.learningequality.Kolibri |  |
| KolourPaint | org.kde.kolourpaint | org.kde.kolourpaint | app-data | flatpak install flathub org.kde.kolourpaint |  |
| Komikku | info.febvre.Komikku | info.febvre.Komikku | app-data | flatpak install flathub info.febvre.Komikku |  |
| Konsole | org.kde.konsole | org.kde.konsole | app-data | flatpak install flathub org.kde.konsole |  |
| Kontact | org.kde.kontact | org.kde.kontact | app-data | flatpak install flathub org.kde.kontact |  |
| Kontainer | io.github.DenysMb.Kontainer | io.github.DenysMb.Kontainer | app-data | flatpak install flathub io.github.DenysMb.Kontainer |  |
| Koodo Reader | io.github.troyeguo.koodo-reader | io.github.troyeguo.koodo-reader | app-data | flatpak install flathub io.github.troyeguo.koodo-reader |  |
| Kooha | io.github.seadve.Kooha | io.github.seadve.Kooha | app-data | flatpak install flathub io.github.seadve.Kooha |  |
| KOReader | rocks.koreader.KOReader | rocks.koreader.KOReader | app-data | flatpak install flathub rocks.koreader.KOReader |  |
| KPatience | org.kde.kpat | org.kde.kpat | app-data | flatpak install flathub org.kde.kpat |  |
| KRDC | org.kde.krdc | org.kde.krdc | app-data | flatpak install flathub org.kde.krdc |  |
| Krename | org.kde.krename | org.kde.krename | app-data | flatpak install flathub org.kde.krename |  |
| Krita | org.kde.krita | org.kde.krita | app-data | flatpak install flathub org.kde.krita |  |
| KShisen | org.kde.kshisen | org.kde.kshisen | app-data | flatpak install flathub org.kde.kshisen |  |
| ksnip | org.ksnip.ksnip | org.ksnip.ksnip | app-data | flatpak install flathub org.ksnip.ksnip |  |
| KStars | org.kde.kstars | org.kde.kstars | app-data | flatpak install flathub org.kde.kstars |  |
| KSudoku | org.kde.ksudoku | org.kde.ksudoku | app-data | flatpak install flathub org.kde.ksudoku |  |
| KTailctl | org.fkoehler.KTailctl | org.fkoehler.KTailctl | app-data | flatpak install flathub org.fkoehler.KTailctl |  |
| KTorrent | org.kde.ktorrent | org.kde.ktorrent | app-data | flatpak install flathub org.kde.ktorrent |  |
| KTouch | org.kde.ktouch | org.kde.ktouch | app-data | flatpak install flathub org.kde.ktouch |  |
| KWrite | org.kde.kwrite | org.kde.kwrite | app-data | flatpak install flathub org.kde.kwrite |  |
| LabPlot | org.kde.labplot | org.kde.labplot | app-data | flatpak install flathub org.kde.labplot |  |
| LabyMod | net.labymod.LabyMod | net.labymod.LabyMod | app-data | flatpak install flathub net.labymod.LabyMod | Flathub calls it "Laby Launcher" |
| LACT | io.github.ilya_zlobintsev.LACT | io.github.ilya_zlobintsev.LACT | app-data | flatpak install flathub io.github.ilya_zlobintsev.LACT |  |
| Lada | io.github.ladaapp.lada | io.github.ladaapp.lada | app-data | flatpak install flathub io.github.ladaapp.lada |  |
| Lapce | dev.lapce.lapce | dev.lapce.lapce | app-data | flatpak install flathub dev.lapce.lapce |  |
| Learn 6502 Assembly | eu.jumplink.Learn6502 | eu.jumplink.Learn6502 | app-data | flatpak install flathub eu.jumplink.Learn6502 | Flathub calls it "Learn 6502" |
| Legacy Launcher | ch.tlaun.TL | ch.tlaun.TL | app-data | flatpak install flathub ch.tlaun.TL |  |
| Lenspect | io.github.vmkspv.lenspect | io.github.vmkspv.lenspect | app-data | flatpak install flathub io.github.vmkspv.lenspect |  |
| LeoCAD | org.leocad.LeoCAD | org.leocad.LeoCAD | app-data | flatpak install flathub org.leocad.LeoCAD |  |
| LibreCAD | org.librecad.librecad | org.librecad.librecad | app-data | flatpak install flathub org.librecad.librecad |  |
| LibreOffice | org.libreoffice.LibreOffice | org.libreoffice.LibreOffice | app-data | flatpak install flathub org.libreoffice.LibreOffice |  |
| LibrePCB | org.librepcb.LibrePCB | org.librepcb.LibrePCB | app-data | flatpak install flathub org.librepcb.LibrePCB |  |
| LibreSprite | com.github.libresprite.LibreSprite | com.github.libresprite.LibreSprite | app-data | flatpak install flathub com.github.libresprite.LibreSprite |  |
| LibreWolf | io.gitlab.librewolf-community | io.gitlab.librewolf-community | app-data | flatpak install flathub io.gitlab.librewolf-community |  |
| Limo | io.github.limo_app.limo | io.github.limo_app.limo | app-data | flatpak install flathub io.github.limo_app.limo |  |
| Linux QQ | com.qq.QQ | com.qq.QQ | app-data | flatpak install flathub com.qq.QQ |  |
| Linux Theme Store | io.github.debasish_patra_1987.linuxthemestore | io.github.debasish_patra_1987.linuxthemestore | app-data | flatpak install flathub io.github.debasish_patra_1987.linuxthemestore |  |
| Live Captions | net.sapples.LiveCaptions | net.sapples.LiveCaptions | app-data | flatpak install flathub net.sapples.LiveCaptions |  |
| LMMS | io.lmms.LMMS | io.lmms.LMMS | app-data | flatpak install flathub io.lmms.LMMS |  |
| LocalSend | org.localsend.localsend_app | org.localsend.localsend_app | app-data | flatpak install flathub org.localsend.localsend_app |  |
| LocalTranslate | dev.ters.LocalTranslate | dev.ters.LocalTranslate | app-data | flatpak install flathub dev.ters.LocalTranslate |  |
| Logs | org.gnome.Logs | org.gnome.Logs | app-data | flatpak install flathub org.gnome.Logs |  |
| Logseq | com.logseq.Logseq | com.logseq.Logseq | app-data | flatpak install flathub com.logseq.Logseq |  |
| Lollypop | org.gnome.Lollypop | org.gnome.Lollypop | app-data | flatpak install flathub org.gnome.Lollypop |  |
| LosslessCut | no.mifi.losslesscut | no.mifi.losslesscut | app-data | flatpak install flathub no.mifi.losslesscut |  |
| Luanti | org.luanti.luanti | org.luanti.luanti | app-data | flatpak install flathub org.luanti.luanti |  |
| Ludusavi | com.github.mtkennerly.ludusavi | com.github.mtkennerly.ludusavi | app-data | flatpak install flathub com.github.mtkennerly.ludusavi |  |
| Luminance | com.sidevesh.Luminance | com.sidevesh.Luminance | app-data | flatpak install flathub com.sidevesh.Luminance |  |
| Lunacy | com.icons8.Lunacy | com.icons8.Lunacy | app-data | flatpak install flathub com.icons8.Lunacy |  |
| Lunar Client | com.lunarclient.LunarClient | com.lunarclient.LunarClient | app-data | flatpak install flathub com.lunarclient.LunarClient |  |
| Lutris | net.lutris.Lutris | net.lutris.Lutris | app-data | flatpak install flathub net.lutris.Lutris |  |
| M64Py | net.sourceforge.m64py.M64Py | net.sourceforge.m64py.M64Py | app-data | flatpak install flathub net.sourceforge.m64py.M64Py |  |
| Mahjongg | org.gnome.Mahjongg | org.gnome.Mahjongg | app-data | flatpak install flathub org.gnome.Mahjongg |  |
| Mailspring | com.getmailspring.Mailspring | com.getmailspring.Mailspring | app-data | flatpak install flathub com.getmailspring.Mailspring |  |
| MailViewer | io.github.alescdb.mailviewer | io.github.alescdb.mailviewer | app-data | flatpak install flathub io.github.alescdb.mailviewer |  |
| Main Menu | page.codeberg.libre_menu_editor.LibreMenuEditor | page.codeberg.libre_menu_editor.LibreMenuEditor | app-data | flatpak install flathub page.codeberg.libre_menu_editor.LibreMenuEditor |  |
| MakeMKV | com.makemkv.MakeMKV | com.makemkv.MakeMKV | app-data | flatpak install flathub com.makemkv.MakeMKV |  |
| MAME | org.mamedev.MAME | org.mamedev.MAME | app-data | flatpak install flathub org.mamedev.MAME |  |
| Mango Juice | io.github.radiolamp.mangojuice | io.github.radiolamp.mangojuice | app-data | flatpak install flathub io.github.radiolamp.mangojuice |  |
| Maps | org.gnome.Maps | org.gnome.Maps | app-data | flatpak install flathub org.gnome.Maps |  |
| Marble | org.kde.marble | org.kde.marble | app-data | flatpak install flathub org.kde.marble |  |
| MarkText | com.github.marktext.marktext | com.github.marktext.marktext | app-data | flatpak install flathub com.github.marktext.marktext |  |
| Master PDF Editor | net.code_industry.MasterPDFEditor | net.code_industry.MasterPDFEditor | app-data | flatpak install flathub net.code_industry.MasterPDFEditor |  |
| materialgram | io.github.kukuruzka165.materialgram | io.github.kukuruzka165.materialgram | app-data | flatpak install flathub io.github.kukuruzka165.materialgram |  |
| Materialious | us.materialio.Materialious | us.materialio.Materialious | app-data | flatpak install flathub us.materialio.Materialious |  |
| Mattermost | com.mattermost.Desktop | com.mattermost.Desktop | app-data | flatpak install flathub com.mattermost.Desktop |  |
| MAX | ru.max.MAX | ru.max.MAX | app-data | flatpak install flathub ru.max.MAX |  |
| Media Downloader | com.markopejic.downloader | com.markopejic.downloader | app-data | flatpak install flathub com.markopejic.downloader |  |
| Media Downloader | com.warlordsoftwares.media-downloader | com.warlordsoftwares.media-downloader | app-data | flatpak install flathub com.warlordsoftwares.media-downloader |  |
| Media Downloader | io.github.mhogomchungu.media-downloader | io.github.mhogomchungu.media-downloader | app-data | flatpak install flathub io.github.mhogomchungu.media-downloader |  |
| MediaInfo | net.mediaarea.MediaInfo | net.mediaarea.MediaInfo | app-data | flatpak install flathub net.mediaarea.MediaInfo |  |
| MediathekView | de.mediathekview.MediathekView | de.mediathekview.MediathekView | app-data | flatpak install flathub de.mediathekview.MediathekView |  |
| Meld | org.gnome.meld | org.gnome.meld | app-data | flatpak install flathub org.gnome.meld |  |
| melonDS | net.kuribo64.melonDS | net.kuribo64.melonDS | app-data | flatpak install flathub net.kuribo64.melonDS |  |
| MenuLibre | org.bluesabre.MenuLibre | org.bluesabre.MenuLibre | app-data | flatpak install flathub org.bluesabre.MenuLibre |  |
| Merkuro | org.kde.merkuro | org.kde.merkuro | app-data | flatpak install flathub org.kde.merkuro |  |
| MeshLab | net.meshlab.MeshLab | net.meshlab.MeshLab | app-data | flatpak install flathub net.meshlab.MeshLab |  |
| Meshtastic | org.meshtastic.meshtasticd | org.meshtastic.meshtasticd | app-data | flatpak install flathub org.meshtastic.meshtasticd |  |
| Meteo | com.gitlab.bitseater.meteo | com.gitlab.bitseater.meteo | app-data | flatpak install flathub com.gitlab.bitseater.meteo |  |
| mGBA | io.mgba.mGBA | io.mgba.mGBA | app-data | flatpak install flathub io.mgba.mGBA |  |
| Microsoft Edge | com.microsoft.Edge | com.microsoft.Edge | app-data | flatpak install flathub com.microsoft.Edge |  |
| Millisecond | io.github.gaheldev.Millisecond | io.github.gaheldev.Millisecond | app-data | flatpak install flathub io.github.gaheldev.Millisecond |  |
| Mindustry | com.github.Anuken.Mindustry | com.github.Anuken.Mindustry | app-data | flatpak install flathub com.github.Anuken.Mindustry |  |
| Minecraft | com.mojang.Minecraft | com.mojang.Minecraft | app-data | flatpak install flathub com.mojang.Minecraft | Flathub calls it "Minecraft Launcher" |
| Minecraft Bedrock Launcher | io.mrarm.mcpelauncher | io.mrarm.mcpelauncher | app-data | flatpak install flathub io.mrarm.mcpelauncher |  |
| Minecraft: Pi Edition: Reborn (Client) | com.thebrokenrail.MCPIReborn | com.thebrokenrail.MCPIReborn | app-data | flatpak install flathub com.thebrokenrail.MCPIReborn | Flathub calls it "Minecraft: Pi Edition: Reborn" |
| Mines | org.gnome.Mines | org.gnome.Mines | app-data | flatpak install flathub org.gnome.Mines |  |
| Minigalaxy | io.github.sharkwouter.Minigalaxy | io.github.sharkwouter.Minigalaxy | app-data | flatpak install flathub io.github.sharkwouter.Minigalaxy |  |
| Minion | gg.minion.Minion | gg.minion.Minion | app-data | flatpak install flathub gg.minion.Minion |  |
| Minuet | org.kde.minuet | org.kde.minuet | app-data | flatpak install flathub org.kde.minuet |  |
| Mirror Hall | eu.nokun.MirrorHall | eu.nokun.MirrorHall | app-data | flatpak install flathub eu.nokun.MirrorHall |  |
| Mission Center | io.missioncenter.MissionCenter | io.missioncenter.MissionCenter | app-data | flatpak install flathub io.missioncenter.MissionCenter |  |
| Mixxx | org.mixxx.Mixxx | org.mixxx.Mixxx | app-data | flatpak install flathub org.mixxx.Mixxx | Flathub calls it "Mixxx DJ Software" |
| MKVToolNix | org.bunkus.mkvtoolnix-gui | org.bunkus.mkvtoolnix-gui | app-data | flatpak install flathub org.bunkus.mkvtoolnix-gui |  |
| MMEX Money Manager | org.moneymanagerex.MMEX | org.moneymanagerex.MMEX | app-data | flatpak install flathub org.moneymanagerex.MMEX |  |
| Modrinth App | com.modrinth.ModrinthApp | com.modrinth.ModrinthApp | app-data | flatpak install flathub com.modrinth.ModrinthApp |  |
| Monero GUI | org.getmonero.Monero | org.getmonero.Monero | app-data | flatpak install flathub org.getmonero.Monero |  |
| MongoDB Compass | com.mongodb.Compass | com.mongodb.Compass | app-data | flatpak install flathub com.mongodb.Compass |  |
| Monitorets | io.github.jorchube.monitorets | io.github.jorchube.monitorets | app-data | flatpak install flathub io.github.jorchube.monitorets |  |
| Moonlight | com.moonlight_stream.Moonlight | com.moonlight_stream.Moonlight | app-data | flatpak install flathub com.moonlight_stream.Moonlight |  |
| Morse | io.github.teacond.Morse | io.github.teacond.Morse | app-data | flatpak install flathub io.github.teacond.Morse |  |
| Motrix | net.agalwood.Motrix | net.agalwood.Motrix | app-data | flatpak install flathub net.agalwood.Motrix |  |
| Mousai | io.github.seadve.Mousai | io.github.seadve.Mousai | app-data | flatpak install flathub io.github.seadve.Mousai |  |
| Mousam | io.github.amit9838.mousam | io.github.amit9838.mousam | app-data | flatpak install flathub io.github.amit9838.mousam |  |
| Mozilla VPN | org.mozilla.vpn | org.mozilla.vpn | app-data | flatpak install flathub org.mozilla.vpn |  |
| MPC-QT | io.github.mpc_qt.mpc-qt | io.github.mpc_qt.mpc-qt | app-data | flatpak install flathub io.github.mpc_qt.mpc-qt |  |
| mpv | io.mpv.Mpv | io.mpv.Mpv | app-data | flatpak install flathub io.mpv.Mpv |  |
| Mullvad Browser | net.mullvad.MullvadBrowser | net.mullvad.MullvadBrowser | app-data | flatpak install flathub net.mullvad.MullvadBrowser |  |
| Mumble | info.mumble.Mumble | info.mumble.Mumble | app-data | flatpak install flathub info.mumble.Mumble |  |
| MuseScore | org.musescore.MuseScore | org.musescore.MuseScore | app-data | flatpak install flathub org.musescore.MuseScore |  |
| Music | org.gnome.Music | org.gnome.Music | app-data | flatpak install flathub org.gnome.Music |  |
| MusicBrainz Picard | org.musicbrainz.Picard | org.musicbrainz.Picard | app-data | flatpak install flathub org.musicbrainz.Picard |  |
| Musicfetch | net.fhannenheim.musicfetch | net.fhannenheim.musicfetch | app-data | flatpak install flathub net.fhannenheim.musicfetch |  |
| musicpod | org.feichtmeier.Musicpod | org.feichtmeier.Musicpod | app-data | flatpak install flathub org.feichtmeier.Musicpod |  |
| MyPaint | org.mypaint.MyPaint | org.mypaint.MyPaint | app-data | flatpak install flathub org.mypaint.MyPaint |  |
| n-Track Studio | com.ntrack.n-track | com.ntrack.n-track | app-data | flatpak install flathub com.ntrack.n-track |  |
| Natron | fr.natron.Natron | fr.natron.Natron | app-data | flatpak install flathub fr.natron.Natron |  |
| NBTExplorer | com.jaquadro.NBTExplorer | com.jaquadro.NBTExplorer | app-data | flatpak install flathub com.jaquadro.NBTExplorer |  |
| ncspot | io.github.hrkfdn.ncspot | io.github.hrkfdn.ncspot | app-data | flatpak install flathub io.github.hrkfdn.ncspot |  |
| NeoChat | org.kde.neochat | org.kde.neochat | app-data | flatpak install flathub org.kde.neochat |  |
| Neothesia | com.github.polymeilex.neothesia | com.github.polymeilex.neothesia | app-data | flatpak install flathub com.github.polymeilex.neothesia |  |
| Neovim | io.neovim.nvim | io.neovim.nvim | app-data | flatpak install flathub io.neovim.nvim |  |
| Nestopia | ca._0ldsk00l.Nestopia | ca._0ldsk00l.Nestopia | app-data | flatpak install flathub ca._0ldsk00l.Nestopia |  |
| NetBeans | org.apache.netbeans | org.apache.netbeans | app-data | flatpak install flathub org.apache.netbeans |  |
| NetPeek | io.github.zingytomato.netpeek | io.github.zingytomato.netpeek | app-data | flatpak install flathub io.github.zingytomato.netpeek |  |
| Newelle | io.github.qwersyk.Newelle | io.github.qwersyk.Newelle | app-data | flatpak install flathub io.github.qwersyk.Newelle |  |
| NewPipe (unofficial port) | net.newpipe.NewPipe | net.newpipe.NewPipe | app-data | flatpak install flathub net.newpipe.NewPipe |  |
| Newsflash | io.gitlab.news_flash.NewsFlash | io.gitlab.news_flash.NewsFlash | app-data | flatpak install flathub io.gitlab.news_flash.NewsFlash |  |
| Nextcloud Desktop Client | com.nextcloud.desktopclient.nextcloud | com.nextcloud.desktopclient.nextcloud | app-data | flatpak install flathub com.nextcloud.desktopclient.nextcloud |  |
| nheko | im.nheko.Nheko | im.nheko.Nheko | app-data | flatpak install flathub im.nheko.Nheko |  |
| Nicotine+ | org.nicotine_plus.Nicotine | org.nicotine_plus.Nicotine | app-data | flatpak install flathub org.nicotine_plus.Nicotine |  |
| Nixwriter | com.gitlab.adnan338.Nixwriter | com.gitlab.adnan338.Nixwriter | app-data | flatpak install flathub com.gitlab.adnan338.Nixwriter |  |
| NoMachine Enterprise Client | com.nomachine.nxplayer | com.nomachine.nxplayer | app-data | flatpak install flathub com.nomachine.nxplayer | Flathub calls it "NoMachine Player" |
| nomacs - Image Lounge | org.nomacs.ImageLounge | org.nomacs.ImageLounge | app-data | flatpak install flathub org.nomacs.ImageLounge |  |
| Nook Desktop | camp.nook.nookdesktop | camp.nook.nookdesktop | app-data | flatpak install flathub camp.nook.nookdesktop |  |
| NoRisk Client Launcher | gg.norisk.NoRiskClientLauncherV3 | gg.norisk.NoRiskClientLauncherV3 | app-data | flatpak install flathub gg.norisk.NoRiskClientLauncherV3 |  |
| NormCap | com.github.dynobo.normcap | com.github.dynobo.normcap | app-data | flatpak install flathub com.github.dynobo.normcap |  |
| Nostalgia | im.bernard.Nostalgia | im.bernard.Nostalgia | app-data | flatpak install flathub im.bernard.Nostalgia |  |
| Notepad Next | com.github.dail8859.NotepadNext | com.github.dail8859.NotepadNext | app-data | flatpak install flathub com.github.dail8859.NotepadNext |  |
| Notepadqq | com.notepadqq.Notepadqq | com.notepadqq.Notepadqq | app-data | flatpak install flathub com.notepadqq.Notepadqq |  |
| Notes | org.gnome.Notes | org.gnome.Notes | app-data | flatpak install flathub org.gnome.Notes |  |
| Notes | io.github.nuttyartist.notes | io.github.nuttyartist.notes | app-data | flatpak install flathub io.github.nuttyartist.notes |  |
| Notesnook | com.notesnook.Notesnook | com.notesnook.Notesnook | app-data | flatpak install flathub com.notesnook.Notesnook |  |
| NouTube | jp.nonbili.noutube | jp.nonbili.noutube | app-data | flatpak install flathub jp.nonbili.noutube |  |
| Nucleus | page.codeberg.lo_vely.Nucleus | page.codeberg.lo_vely.Nucleus | app-data | flatpak install flathub page.codeberg.lo_vely.Nucleus |  |
| Nvidia System Monitor | io.github.congard.qnvsm | io.github.congard.qnvsm | app-data | flatpak install flathub io.github.congard.qnvsm |  |
| NymVPN | net.nymtech.NymVPN | net.nymtech.NymVPN | app-data | flatpak install flathub net.nymtech.NymVPN |  |
| Obfuscate | com.belmoussaoui.Obfuscate | com.belmoussaoui.Obfuscate | app-data | flatpak install flathub com.belmoussaoui.Obfuscate |  |
| OBS Studio | com.obsproject.Studio | com.obsproject.Studio | app-data | flatpak install flathub com.obsproject.Studio |  |
| Obsidian | md.obsidian.Obsidian | md.obsidian.Obsidian | app-data | flatpak install flathub md.obsidian.Obsidian |  |
| OCRFeeder | org.gnome.OCRFeeder | org.gnome.OCRFeeder | app-data | flatpak install flathub org.gnome.OCRFeeder |  |
| Okular | org.kde.okular | org.kde.okular | app-data | flatpak install flathub org.kde.okular |  |
| Olive | org.olivevideoeditor.Olive | org.olivevideoeditor.Olive | app-data | flatpak install flathub org.olivevideoeditor.Olive |  |
| OnionMedia X | io.github.onionware_github.onionmedia | io.github.onionware_github.onionmedia | app-data | flatpak install flathub io.github.onionware_github.onionmedia |  |
| OnionShare | org.onionshare.OnionShare | org.onionshare.OnionShare | app-data | flatpak install flathub org.onionshare.OnionShare |  |
| ONLYOFFICE Desktop Editors | org.onlyoffice.desktopeditors | org.onlyoffice.desktopeditors | app-data | flatpak install flathub org.onlyoffice.desktopeditors |  |
| OpenAndroidInstaller | org.openandroidinstaller.OpenAndroidInstaller | org.openandroidinstaller.OpenAndroidInstaller | app-data | flatpak install flathub org.openandroidinstaller.OpenAndroidInstaller |  |
| OpenBoard | ch.openboard.OpenBoard | ch.openboard.OpenBoard | app-data | flatpak install flathub ch.openboard.OpenBoard |  |
| OpenComic | app.opencomic.OpenComic | app.opencomic.OpenComic | app-data | flatpak install flathub app.opencomic.OpenComic |  |
| OpenCPN | org.opencpn.OpenCPN | org.opencpn.OpenCPN | app-data | flatpak install flathub org.opencpn.OpenCPN |  |
| OpenDeck | me.amankhanna.opendeck | me.amankhanna.opendeck | app-data | flatpak install flathub me.amankhanna.opendeck |  |
| OpenMW | org.openmw.OpenMW | org.openmw.OpenMW | app-data | flatpak install flathub org.openmw.OpenMW |  |
| OpenRA | net.openra.OpenRA | net.openra.OpenRA | app-data | flatpak install flathub net.openra.OpenRA |  |
| OpenRCT2 | io.openrct2.OpenRCT2 | io.openrct2.OpenRCT2 | app-data | flatpak install flathub io.openrct2.OpenRCT2 |  |
| OpenRGB | org.openrgb.OpenRGB | org.openrgb.OpenRGB | app-data | flatpak install flathub org.openrgb.OpenRGB |  |
| OpenSCAD | org.openscad.OpenSCAD | org.openscad.OpenSCAD | app-data | flatpak install flathub org.openscad.OpenSCAD |  |
| OpenShot Video Editor | org.openshot.OpenShot | org.openshot.OpenShot | app-data | flatpak install flathub org.openshot.OpenShot |  |
| OpenTabletDriver | net.opentabletdriver.OpenTabletDriver | net.opentabletdriver.OpenTabletDriver | app-data | flatpak install flathub net.opentabletdriver.OpenTabletDriver |  |
| OpenToonz | io.github.OpenToonz | io.github.OpenToonz | app-data | flatpak install flathub io.github.OpenToonz |  |
| OpenTTD | org.openttd.OpenTTD | org.openttd.OpenTTD | app-data | flatpak install flathub org.openttd.OpenTTD |  |
| Opera | com.opera.Opera | com.opera.Opera | app-data | flatpak install flathub com.opera.Opera |  |
| OptimusUI | de.z_ray.OptimusUI | de.z_ray.OptimusUI | app-data | flatpak install flathub de.z_ray.OptimusUI |  |
| Organic Maps | app.organicmaps.desktop | app.organicmaps.desktop | app-data | flatpak install flathub app.organicmaps.desktop |  |
| Orion Torrent Client | com.ktechpit.orion | com.ktechpit.orion | app-data | flatpak install flathub com.ktechpit.orion |  |
| osu! | sh.ppy.osu | sh.ppy.osu | app-data | flatpak install flathub sh.ppy.osu |  |
| Oversteer | io.github.berarma.Oversteer | io.github.berarma.Oversteer | app-data | flatpak install flathub io.github.berarma.Oversteer |  |
| Packet | io.github.nozwock.Packet | io.github.nozwock.Packet | app-data | flatpak install flathub io.github.nozwock.Packet |  |
| Paint | org.sugarlabs.Paint | org.sugarlabs.Paint | app-data | flatpak install flathub org.sugarlabs.Paint |  |
| Pantheon Tweaks | io.github.pantheon_tweaks.pantheon-tweaks | io.github.pantheon_tweaks.pantheon-tweaks | app-data | flatpak install flathub io.github.pantheon_tweaks.pantheon-tweaks |  |
| Paper Clip | io.github.diegoivan.pdf_metadata_editor | io.github.diegoivan.pdf_metadata_editor | app-data | flatpak install flathub io.github.diegoivan.pdf_metadata_editor |  |
| Paperwork | work.openpaper.Paperwork | work.openpaper.Paperwork | app-data | flatpak install flathub work.openpaper.Paperwork |  |
| Parabolic | org.nickvision.tubeconverter | org.nickvision.tubeconverter | app-data | flatpak install flathub org.nickvision.tubeconverter |  |
| Parallel Launcher | ca.parallel_launcher.ParallelLauncher | ca.parallel_launcher.ParallelLauncher | app-data | flatpak install flathub ca.parallel_launcher.ParallelLauncher |  |
| Parsec | com.parsecgaming.parsec | com.parsecgaming.parsec | app-data | flatpak install flathub com.parsecgaming.parsec |  |
| Passwords and Keys | org.gnome.seahorse.Application | org.gnome.seahorse.Application | app-data | flatpak install flathub org.gnome.seahorse.Application |  |
| Path of Building | community.pathofbuilding.PathOfBuilding | community.pathofbuilding.PathOfBuilding | app-data | flatpak install flathub community.pathofbuilding.PathOfBuilding |  |
| PCSX2 | net.pcsx2.PCSX2 | net.pcsx2.PCSX2 | app-data | flatpak install flathub net.pcsx2.PCSX2 |  |
| PDF Arranger | com.github.jeromerobert.pdfarranger | com.github.jeromerobert.pdfarranger | app-data | flatpak install flathub com.github.jeromerobert.pdfarranger |  |
| PDF Mix Tool | eu.scarpetta.PDFMixTool | eu.scarpetta.PDFMixTool | app-data | flatpak install flathub eu.scarpetta.PDFMixTool |  |
| PDF Tricks | com.github.muriloventuroso.pdftricks | com.github.muriloventuroso.pdftricks | app-data | flatpak install flathub com.github.muriloventuroso.pdftricks |  |
| PDF4QT | io.github.JakubMelka.Pdf4qt | io.github.JakubMelka.Pdf4qt | app-data | flatpak install flathub io.github.JakubMelka.Pdf4qt |  |
| PDFedit | net.sourceforge.Pdfedit | net.sourceforge.Pdfedit | app-data | flatpak install flathub net.sourceforge.Pdfedit |  |
| PeaZip | io.github.peazip.PeaZip | io.github.peazip.PeaZip | app-data | flatpak install flathub io.github.peazip.PeaZip |  |
| Pencil2D | org.pencil2d.Pencil2D | org.pencil2d.Pencil2D | app-data | flatpak install flathub org.pencil2d.Pencil2D |  |
| pgAdmin 4 | org.pgadmin.pgadmin4 | org.pgadmin.pgadmin4 | app-data | flatpak install flathub org.pgadmin.pgadmin4 |  |
| Phoenicis PlayOnLinux | org.phoenicis.playonlinux | org.phoenicis.playonlinux | app-data | flatpak install flathub org.phoenicis.playonlinux |  |
| Photoflare | io.photoflare.photoflare | io.photoflare.photoflare | app-data | flatpak install flathub io.photoflare.photoflare |  |
| PhotoQt | org.photoqt.PhotoQt | org.photoqt.PhotoQt | app-data | flatpak install flathub org.photoqt.PhotoQt |  |
| Photos | org.kde.koko | org.kde.koko | app-data | flatpak install flathub org.kde.koko |  |
| PhpStorm | com.jetbrains.PhpStorm | com.jetbrains.PhpStorm | app-data | flatpak install flathub com.jetbrains.PhpStorm |  |
| Pika Backup | org.gnome.World.PikaBackup | org.gnome.World.PikaBackup | app-data | flatpak install flathub org.gnome.World.PikaBackup |  |
| PikaTorrent | com.pikatorrent.PikaTorrent | com.pikatorrent.PikaTorrent | app-data | flatpak install flathub com.pikatorrent.PikaTorrent |  |
| Pin It! | com.github.ryonakano.pinit | com.github.ryonakano.pinit | app-data | flatpak install flathub com.github.ryonakano.pinit |  |
| Pins | io.github.fabrialberio.pinapp | io.github.fabrialberio.pinapp | app-data | flatpak install flathub io.github.fabrialberio.pinapp |  |
| Pinta | com.github.PintaProject.Pinta | com.github.PintaProject.Pinta | app-data | flatpak install flathub com.github.PintaProject.Pinta |  |
| Pipeline | de.schmidhuberj.tubefeeder | de.schmidhuberj.tubefeeder | app-data | flatpak install flathub de.schmidhuberj.tubefeeder |  |
| Piper | org.freedesktop.Piper | org.freedesktop.Piper | app-data | flatpak install flathub org.freedesktop.Piper |  |
| Pitivi | org.pitivi.Pitivi | org.pitivi.Pitivi | app-data | flatpak install flathub org.pitivi.Pitivi |  |
| Pixelorama | com.orama_interactive.Pixelorama | com.orama_interactive.Pixelorama | app-data | flatpak install flathub com.orama_interactive.Pixelorama |  |
| Planify | io.github.alainm23.planify | io.github.alainm23.planify | app-data | flatpak install flathub io.github.alainm23.planify |  |
| PlasmaTube | org.kde.plasmatube | org.kde.plasmatube | app-data | flatpak install flathub org.kde.plasmatube |  |
| Play Timer | io.github.efogdev.mpris-timer | io.github.efogdev.mpris-timer | app-data | flatpak install flathub io.github.efogdev.mpris-timer |  |
| PlayOnLinux 4 | com.playonlinux.PlayOnLinux4 | com.playonlinux.PlayOnLinux4 | app-data | flatpak install flathub com.playonlinux.PlayOnLinux4 |  |
| Plex | tv.plex.PlexDesktop | tv.plex.PlexDesktop | app-data | flatpak install flathub tv.plex.PlexDesktop |  |
| Plex HTPC | tv.plex.PlexHTPC | tv.plex.PlexHTPC | app-data | flatpak install flathub tv.plex.PlexHTPC |  |
| Plexamp | com.plexamp.Plexamp | com.plexamp.Plexamp | app-data | flatpak install flathub com.plexamp.Plexamp |  |
| Podcasts | org.gnome.Podcasts | org.gnome.Podcasts | app-data | flatpak install flathub org.gnome.Podcasts |  |
| Podman Desktop | io.podman_desktop.PodmanDesktop | io.podman_desktop.PodmanDesktop | app-data | flatpak install flathub io.podman_desktop.PodmanDesktop |  |
| Pods | com.github.marhkb.Pods | com.github.marhkb.Pods | app-data | flatpak install flathub com.github.marhkb.Pods |  |
| PokeMMO | com.pokemmo.PokeMMO | com.pokemmo.PokeMMO | app-data | flatpak install flathub com.pokemmo.PokeMMO |  |
| Polychromatic | app.polychromatic.controller | app.polychromatic.controller | app-data | flatpak install flathub app.polychromatic.controller |  |
| PolyMC | org.polymc.PolyMC | org.polymc.PolyMC | app-data | flatpak install flathub org.polymc.PolyMC |  |
| pomodorolm | org.jousse.vincent.Pomodorolm | org.jousse.vincent.Pomodorolm | app-data | flatpak install flathub org.jousse.vincent.Pomodorolm | Flathub calls it "Concentré" |
| Popsicle | com.system76.Popsicle | com.system76.Popsicle | app-data | flatpak install flathub com.system76.Popsicle |  |
| Portal for Teams | com.github.IsmaelMartinez.teams_for_linux | com.github.IsmaelMartinez.teams_for_linux | app-data | flatpak install flathub com.github.IsmaelMartinez.teams_for_linux |  |
| Portfolio Performance | info.portfolio_performance.PortfolioPerformance | info.portfolio_performance.PortfolioPerformance | app-data | flatpak install flathub info.portfolio_performance.PortfolioPerformance |  |
| PortProton | ru.linux_gaming.PortProton | ru.linux_gaming.PortProton | app-data | flatpak install flathub ru.linux_gaming.PortProton |  |
| Postman | com.getpostman.Postman | com.getpostman.Postman | app-data | flatpak install flathub com.getpostman.Postman |  |
| PowerISO | com.poweriso.PowerISO | com.poweriso.PowerISO | app-data | flatpak install flathub com.poweriso.PowerISO |  |
| PPSSPP | org.ppsspp.PPSSPP | org.ppsspp.PPSSPP | app-data | flatpak install flathub org.ppsspp.PPSSPP |  |
| PrimeHack | io.github.shiiion.primehack | io.github.shiiion.primehack | app-data | flatpak install flathub io.github.shiiion.primehack |  |
| Prism Launcher | org.prismlauncher.PrismLauncher | org.prismlauncher.PrismLauncher | app-data | flatpak install flathub org.prismlauncher.PrismLauncher |  |
| Proton Mail | me.proton.Mail | me.proton.Mail | app-data | flatpak install flathub me.proton.Mail |  |
| Proton Mail Bridge | ch.protonmail.protonmail-bridge | ch.protonmail.protonmail-bridge | app-data | flatpak install flathub ch.protonmail.protonmail-bridge |  |
| Proton Pass | me.proton.Pass | me.proton.Pass | app-data | flatpak install flathub me.proton.Pass |  |
| Proton VPN | com.protonvpn.www | com.protonvpn.www | app-data | flatpak install flathub com.protonvpn.www |  |
| ProtonPlus | com.vysp3r.ProtonPlus | com.vysp3r.ProtonPlus | app-data | flatpak install flathub com.vysp3r.ProtonPlus |  |
| Protontricks | com.github.Matoking.protontricks | com.github.Matoking.protontricks | app-data | flatpak install flathub com.github.Matoking.protontricks |  |
| ProtonUp-Qt | net.davidotek.pupgui2 | net.davidotek.pupgui2 | app-data | flatpak install flathub net.davidotek.pupgui2 |  |
| PrusaSlicer | com.prusa3d.PrusaSlicer | com.prusa3d.PrusaSlicer | app-data | flatpak install flathub com.prusa3d.PrusaSlicer |  |
| PsTube | io.github.prateekmedia.pstube | io.github.prateekmedia.pstube | app-data | flatpak install flathub io.github.prateekmedia.pstube |  |
| Ptyxis | app.devsuite.Ptyxis | app.devsuite.Ptyxis | app-data | flatpak install flathub app.devsuite.Ptyxis |  |
| Puddletag | net.puddletag.puddletag | net.puddletag.puddletag | app-data | flatpak install flathub net.puddletag.puddletag |  |
| Pulsar | dev.pulsar_edit.Pulsar | dev.pulsar_edit.Pulsar | app-data | flatpak install flathub dev.pulsar_edit.Pulsar |  |
| PulseEffects | com.github.wwmm.pulseeffects | com.github.wwmm.pulseeffects | app-data | flatpak install flathub com.github.wwmm.pulseeffects |  |
| PuTTY | uk.org.greenend.chiark.sgtatham.putty | uk.org.greenend.chiark.sgtatham.putty | app-data | flatpak install flathub uk.org.greenend.chiark.sgtatham.putty |  |
| pwvucontrol | com.saivert.pwvucontrol | com.saivert.pwvucontrol | app-data | flatpak install flathub com.saivert.pwvucontrol |  |
| PyCharm-Professional | com.jetbrains.PyCharm-Professional | com.jetbrains.PyCharm-Professional | app-data | flatpak install flathub com.jetbrains.PyCharm-Professional |  |
| PySolFC | io.sourceforge.pysolfc.PySolFC | io.sourceforge.pysolfc.PySolFC | app-data | flatpak install flathub io.sourceforge.pysolfc.PySolFC |  |
| q4wine | ua.org.brezblock.q4wine | ua.org.brezblock.q4wine | app-data | flatpak install flathub ua.org.brezblock.q4wine |  |
| Qalculate! (GTK UI) | io.github.Qalculate | io.github.Qalculate | app-data | flatpak install flathub io.github.Qalculate |  |
| Qalculate! (Qt UI) | io.github.Qalculate.qalculate-qt | io.github.Qalculate.qalculate-qt | app-data | flatpak install flathub io.github.Qalculate.qalculate-qt |  |
| qBittorrent | org.qbittorrent.qBittorrent | org.qbittorrent.qBittorrent | app-data | flatpak install flathub org.qbittorrent.qBittorrent |  |
| QDirStat | io.github.shundhammer.qdirstat | io.github.shundhammer.qdirstat | app-data | flatpak install flathub io.github.shundhammer.qdirstat |  |
| QGIS Desktop | org.qgis.qgis | org.qgis.qgis | app-data | flatpak install flathub org.qgis.qgis |  |
| QOwnNotes | org.qownnotes.QOwnNotes | org.qownnotes.QOwnNotes | app-data | flatpak install flathub org.qownnotes.QOwnNotes |  |
| Qpdf Tools | br.eng.silas.qpdftools | br.eng.silas.qpdftools | app-data | flatpak install flathub br.eng.silas.qpdftools |  |
| qpwgraph | org.rncbc.qpwgraph | org.rncbc.qpwgraph | app-data | flatpak install flathub org.rncbc.qpwgraph |  |
| QR Scanner | dev.lasheen.qr | dev.lasheen.qr | app-data | flatpak install flathub dev.lasheen.qr |  |
| Qt Creator | io.qt.QtCreator | io.qt.QtCreator | app-data | flatpak install flathub io.qt.QtCreator |  |
| Quadrapassel | org.gnome.Quadrapassel | org.gnome.Quadrapassel | app-data | flatpak install flathub org.gnome.Quadrapassel |  |
| Quod Libet | io.github.quodlibet.QuodLibet | io.github.quodlibet.QuodLibet | app-data | flatpak install flathub io.github.quodlibet.QuodLibet |  |
| qView | com.interversehq.qView | com.interversehq.qView | app-data | flatpak install flathub com.interversehq.qView |  |
| Railway | de.schmidhuberj.DieBahn | de.schmidhuberj.DieBahn | app-data | flatpak install flathub de.schmidhuberj.DieBahn |  |
| RapidRAW | io.github.CyberTimon.RapidRAW | io.github.CyberTimon.RapidRAW | app-data | flatpak install flathub io.github.CyberTimon.RapidRAW |  |
| Raspberry Pi Imager | org.raspberrypi.rpi-imager | org.raspberrypi.rpi-imager | app-data | flatpak install flathub org.raspberrypi.rpi-imager |  |
| RawTherapee | com.rawtherapee.RawTherapee | com.rawtherapee.RawTherapee | app-data | flatpak install flathub com.rawtherapee.RawTherapee |  |
| RazerGenie | xyz.z3ntu.razergenie | xyz.z3ntu.razergenie | app-data | flatpak install flathub xyz.z3ntu.razergenie |  |
| RClone Manager | io.github.zarestia_dev.rclone-manager | io.github.zarestia_dev.rclone-manager | app-data | flatpak install flathub io.github.zarestia_dev.rclone-manager |  |
| Rclone Shuttle | io.github.pieterdd.RcloneShuttle | io.github.pieterdd.RcloneShuttle | app-data | flatpak install flathub io.github.pieterdd.RcloneShuttle |  |
| Rclone UI | com.rcloneui.RcloneUI | com.rcloneui.RcloneUI | app-data | flatpak install flathub com.rcloneui.RcloneUI |  |
| Readest | com.bilingify.readest | com.bilingify.readest | app-data | flatpak install flathub com.bilingify.readest |  |
| REAL Video Enhancer | io.github.tntwise.REAL-Video-Enhancer | io.github.tntwise.REAL-Video-Enhancer | app-data | flatpak install flathub io.github.tntwise.REAL-Video-Enhancer |  |
| Reaper | fm.reaper.Reaper | fm.reaper.Reaper | app-data | flatpak install flathub fm.reaper.Reaper |  |
| Reco | com.github.ryonakano.reco | com.github.ryonakano.reco | app-data | flatpak install flathub com.github.ryonakano.reco |  |
| Recordbox | ca.edestcroix.Recordbox | ca.edestcroix.Recordbox | app-data | flatpak install flathub ca.edestcroix.Recordbox |  |
| Redis Insight | com.redis.RedisInsight | com.redis.RedisInsight | app-data | flatpak install flathub com.redis.RedisInsight |  |
| Refine | page.tesk.Refine | page.tesk.Refine | app-data | flatpak install flathub page.tesk.Refine |  |
| Reins: Chat for Ollama | dev.ibrahimcetin.reins | dev.ibrahimcetin.reins | app-data | flatpak install flathub dev.ibrahimcetin.reins |  |
| Remmina | org.remmina.Remmina | org.remmina.Remmina | app-data | flatpak install flathub org.remmina.Remmina |  |
| Resources | net.nokyan.Resources | net.nokyan.Resources | app-data | flatpak install flathub net.nokyan.Resources |  |
| RetroArch | org.libretro.RetroArch | org.libretro.RetroArch | app-data | flatpak install flathub org.libretro.RetroArch |  |
| RetroDECK | net.retrodeck.retrodeck | net.retrodeck.retrodeck | app-data | flatpak install flathub net.retrodeck.retrodeck |  |
| Revolt | chat.revolt.RevoltDesktop | chat.revolt.RevoltDesktop | app-data | flatpak install flathub chat.revolt.RevoltDesktop |  |
| Rewaita | io.github.swordpuffin.rewaita | io.github.swordpuffin.rewaita | app-data | flatpak install flathub io.github.swordpuffin.rewaita |  |
| Rhythmbox | org.gnome.Rhythmbox3 | org.gnome.Rhythmbox3 | app-data | flatpak install flathub org.gnome.Rhythmbox3 |  |
| Rider | com.jetbrains.Rider | com.jetbrains.Rider | app-data | flatpak install flathub com.jetbrains.Rider |  |
| Riff | dev.diegovsky.Riff | dev.diegovsky.Riff | app-data | flatpak install flathub dev.diegovsky.Riff |  |
| Rnote | com.github.flxzt.rnote | com.github.flxzt.rnote | app-data | flatpak install flathub com.github.flxzt.rnote |  |
| Rocket.Chat | chat.rocket.RocketChat | chat.rocket.RocketChat | app-data | flatpak install flathub chat.rocket.RocketChat |  |
| Rosalie's Mupen GUI | com.github.Rosalie241.RMG | com.github.Rosalie241.RMG | app-data | flatpak install flathub com.github.Rosalie241.RMG |  |
| RPCS3 | net.rpcs3.RPCS3 | net.rpcs3.RPCS3 | app-data | flatpak install flathub net.rpcs3.RPCS3 |  |
| RSS Guard | io.github.martinrotter.rssguard | io.github.martinrotter.rssguard | app-data | flatpak install flathub io.github.martinrotter.rssguard |  |
| Ruffle | rs.ruffle.Ruffle | rs.ruffle.Ruffle | app-data | flatpak install flathub rs.ruffle.Ruffle |  |
| RuneLite | net.runelite.RuneLite | net.runelite.RuneLite | app-data | flatpak install flathub net.runelite.RuneLite |  |
| RuneScape | com.jagex.RuneScape | com.jagex.RuneScape | app-data | flatpak install flathub com.jagex.RuneScape |  |
| RustConn | io.github.totoshko88.RustConn | io.github.totoshko88.RustConn | app-data | flatpak install flathub io.github.totoshko88.RustConn |  |
| RustDesk | com.rustdesk.RustDesk | com.rustdesk.RustDesk | app-data | flatpak install flathub com.rustdesk.RustDesk |  |
| RustRover | com.jetbrains.RustRover | com.jetbrains.RustRover | app-data | flatpak install flathub com.jetbrains.RustRover |  |
| Ryujinx (Ryubing) | io.github.ryubing.Ryujinx | io.github.ryubing.Ryujinx | app-data | flatpak install flathub io.github.ryubing.Ryujinx |  |
| S3Drive | io.kapsa.drive | io.kapsa.drive | app-data | flatpak install flathub io.kapsa.drive |  |
| Saber | com.adilhanney.saber | com.adilhanney.saber | app-data | flatpak install flathub com.adilhanney.saber |  |
| SABnzbd | org.sabnzbd.sabnzbd | org.sabnzbd.sabnzbd | app-data | flatpak install flathub org.sabnzbd.sabnzbd |  |
| Save Desktop | io.github.vikdevelop.SaveDesktop | io.github.vikdevelop.SaveDesktop | app-data | flatpak install flathub io.github.vikdevelop.SaveDesktop |  |
| Sayonara | com.sayonara_player.Sayonara | com.sayonara_player.Sayonara | app-data | flatpak install flathub com.sayonara_player.Sayonara |  |
| Scans to PDF | com.github.unrud.djpdf | com.github.unrud.djpdf | app-data | flatpak install flathub com.github.unrud.djpdf |  |
| Scopebuddy GUI | io.github.rfrench3.scopebuddy-gui | io.github.rfrench3.scopebuddy-gui | app-data | flatpak install flathub io.github.rfrench3.scopebuddy-gui |  |
| Scramble | io.github.tobagin.scramble | io.github.tobagin.scramble | app-data | flatpak install flathub io.github.tobagin.scramble |  |
| Scratch | edu.mit.Scratch | edu.mit.Scratch | app-data | flatpak install flathub edu.mit.Scratch |  |
| Screenshot | org.adishatz.Screenshot | org.adishatz.Screenshot | app-data | flatpak install flathub org.adishatz.Screenshot |  |
| Scribus | net.scribus.Scribus | net.scribus.Scribus | app-data | flatpak install flathub net.scribus.Scribus |  |
| ScummVM | org.scummvm.ScummVM | org.scummvm.ScummVM | app-data | flatpak install flathub org.scummvm.ScummVM |  |
| Secrets | org.gnome.World.Secrets | org.gnome.World.Secrets | app-data | flatpak install flathub org.gnome.World.Secrets |  |
| Sejda PDF Desktop | com.sejda.Sejda | com.sejda.Sejda | app-data | flatpak install flathub com.sejda.Sejda |  |
| Session Desktop | network.loki.Session | network.loki.Session | app-data | flatpak install flathub network.loki.Session |  |
| Sessions | com.pojtinger.felicitas.Sessions | com.pojtinger.felicitas.Sessions | app-data | flatpak install flathub com.pojtinger.felicitas.Sessions |  |
| SGDBoop | com.steamgriddb.SGDBoop | com.steamgriddb.SGDBoop | app-data | flatpak install flathub com.steamgriddb.SGDBoop |  |
| shadPS4 | net.shadps4.shadPS4 | net.shadps4.shadPS4 | app-data | flatpak install flathub net.shadps4.shadPS4 |  |
| Shattered Pixel Dungeon | com.shatteredpixel.shatteredpixeldungeon | com.shatteredpixel.shatteredpixeldungeon | app-data | flatpak install flathub com.shatteredpixel.shatteredpixeldungeon |  |
| Shortwave | de.haeckerfelix.Shortwave | de.haeckerfelix.Shortwave | app-data | flatpak install flathub de.haeckerfelix.Shortwave |  |
| Shotcut | org.shotcut.Shotcut | org.shotcut.Shotcut | app-data | flatpak install flathub org.shotcut.Shotcut |  |
| Shotwell | org.gnome.Shotwell | org.gnome.Shotwell | app-data | flatpak install flathub org.gnome.Shotwell |  |
| Signal Desktop | org.signal.Signal | org.signal.Signal | app-data | flatpak install flathub org.signal.Signal |  |
| Simple Wireplumber GUI | io.github.dyegoaurelio.simple-wireplumber-gui | io.github.dyegoaurelio.simple-wireplumber-gui | app-data | flatpak install flathub io.github.dyegoaurelio.simple-wireplumber-gui |  |
| Simplenote | com.simplenote.Simplenote | com.simplenote.Simplenote | app-data | flatpak install flathub com.simplenote.Simplenote |  |
| SimpleX Chat | chat.simplex.simplex | chat.simplex.simplex | app-data | flatpak install flathub chat.simplex.simplex |  |
| SimulIDE | com.simulide.simulide | com.simulide.simulide | app-data | flatpak install flathub com.simulide.simulide |  |
| Siril | org.siril.Siril | org.siril.Siril | app-data | flatpak install flathub org.siril.Siril |  |
| Sitra | io.github.sitraorg.sitra | io.github.sitraorg.sitra | app-data | flatpak install flathub io.github.sitraorg.sitra |  |
| Skanlite | org.kde.skanlite | org.kde.skanlite | app-data | flatpak install flathub org.kde.skanlite |  |
| Skanpage | org.kde.skanpage | org.kde.skanpage | app-data | flatpak install flathub org.kde.skanpage |  |
| Slack | com.slack.Slack | com.slack.Slack | app-data | flatpak install flathub com.slack.Slack |  |
| Sleepy Launcher | moe.launcher.sleepy-launcher | moe.launcher.sleepy-launcher | app-data | flatpak install flathub moe.launcher.sleepy-launcher |  |
| Smile | it.mijorus.smile | it.mijorus.smile | app-data | flatpak install flathub it.mijorus.smile |  |
| SMPlayer | info.smplayer.SMPlayer | info.smplayer.SMPlayer | app-data | flatpak install flathub info.smplayer.SMPlayer |  |
| Snes9x | com.snes9x.Snes9x | com.snes9x.Snes9x | app-data | flatpak install flathub com.snes9x.Snes9x |  |
| Sober | org.vinegarhq.Sober | org.vinegarhq.Sober | app-data | flatpak install flathub org.vinegarhq.Sober |  |
| Solaar | io.github.pwr_solaar.solaar | io.github.pwr_solaar.solaar | app-data | flatpak install flathub io.github.pwr_solaar.solaar |  |
| Solanum | org.gnome.Solanum | org.gnome.Solanum | app-data | flatpak install flathub org.gnome.Solanum |  |
| SongRec | re.fossplant.songrec | re.fossplant.songrec | app-data | flatpak install flathub re.fossplant.songrec |  |
| Sonic 3: A.I.R | org.sonic3air.Sonic3AIR | org.sonic3air.Sonic3AIR | app-data | flatpak install flathub org.sonic3air.Sonic3AIR |  |
| Sonic Robo Blast 2 | org.srb2.SRB2 | org.srb2.SRB2 | app-data | flatpak install flathub org.srb2.SRB2 |  |
| Sound Recorder | org.gnome.SoundRecorder | org.gnome.SoundRecorder | app-data | flatpak install flathub org.gnome.SoundRecorder |  |
| SoundConverter | org.soundconverter.SoundConverter | org.soundconverter.SoundConverter | app-data | flatpak install flathub org.soundconverter.SoundConverter |  |
| Soundux | io.github.Soundux | io.github.Soundux | app-data | flatpak install flathub io.github.Soundux |  |
| Space Cadet Pinball | com.github.k4zmu2a.spacecadetpinball | com.github.k4zmu2a.spacecadetpinball | app-data | flatpak install flathub com.github.k4zmu2a.spacecadetpinball |  |
| Spedread | com.github.Darazaki.Spedread | com.github.Darazaki.Spedread | app-data | flatpak install flathub com.github.Darazaki.Spedread |  |
| Speech Note | net.mkiol.SpeechNote | net.mkiol.SpeechNote | app-data | flatpak install flathub net.mkiol.SpeechNote |  |
| Speedtest | xyz.ketok.Speedtest | xyz.ketok.Speedtest | app-data | flatpak install flathub xyz.ketok.Speedtest |  |
| Spider | io.github.zaedus.spider | io.github.zaedus.spider | app-data | flatpak install flathub io.github.zaedus.spider |  |
| Spotify | com.spotify.Client | com.spotify.Client | app-data | flatpak install flathub com.spotify.Client |  |
| Spotube | com.github.KRTirtho.Spotube | com.github.KRTirtho.Spotube | app-data | flatpak install flathub com.github.KRTirtho.Spotube |  |
| Spruce | io.github.shonubot.Spruce | io.github.shonubot.Spruce | app-data | flatpak install flathub io.github.shonubot.Spruce |  |
| Spyder | org.spyder_ide.spyder | org.spyder_ide.spyder | app-data | flatpak install flathub org.spyder_ide.spyder |  |
| SSH Pilot | io.github.mfat.sshpilot | io.github.mfat.sshpilot | app-data | flatpak install flathub io.github.mfat.sshpilot |  |
| Standard Notes | org.standardnotes.standardnotes | org.standardnotes.standardnotes | app-data | flatpak install flathub org.standardnotes.standardnotes |  |
| Startup Configuration | best.ellie.StartupConfiguration | best.ellie.StartupConfiguration | app-data | flatpak install flathub best.ellie.StartupConfiguration |  |
| Steam | com.valvesoftware.Steam | com.valvesoftware.Steam | app-data | flatpak install flathub com.valvesoftware.Steam |  |
| Steam Link | com.valvesoftware.SteamLink | com.valvesoftware.SteamLink | app-data | flatpak install flathub com.valvesoftware.SteamLink |  |
| Steam ROM Manager | com.steamgriddb.steam-rom-manager | com.steamgriddb.steam-rom-manager | app-data | flatpak install flathub com.steamgriddb.steam-rom-manager |  |
| Stellarium | org.stellarium.Stellarium | org.stellarium.Stellarium | app-data | flatpak install flathub org.stellarium.Stellarium |  |
| Sticky Notes | com.vixalien.sticky | com.vixalien.sticky | app-data | flatpak install flathub com.vixalien.sticky |  |
| Stimulator | io.github.sigmasd.stimulator | io.github.sigmasd.stimulator | app-data | flatpak install flathub io.github.sigmasd.stimulator |  |
| Strawberry Music Player | org.strawberrymusicplayer.strawberry | org.strawberrymusicplayer.strawberry | app-data | flatpak install flathub org.strawberrymusicplayer.strawberry |  |
| StreamController | com.core447.StreamController | com.core447.StreamController | app-data | flatpak install flathub com.core447.StreamController |  |
| Stremio | com.stremio.Stremio | com.stremio.Stremio | app-data | flatpak install flathub com.stremio.Stremio |  |
| Stremio Service | com.stremio.Service | com.stremio.Service | app-data | flatpak install flathub com.stremio.Service |  |
| Sublime Text | com.sublimehq.SublimeText | com.sublimehq.SublimeText | app-data | flatpak install flathub com.sublimehq.SublimeText |  |
| Subtitle Composer | org.kde.subtitlecomposer | org.kde.subtitlecomposer | app-data | flatpak install flathub org.kde.subtitlecomposer |  |
| Sudoku | io.github.sepehr_rs.Sudoku | io.github.sepehr_rs.Sudoku | app-data | flatpak install flathub io.github.sepehr_rs.Sudoku |  |
| Sunshine | dev.lizardbyte.app.Sunshine | dev.lizardbyte.app.Sunshine | app-data | flatpak install flathub dev.lizardbyte.app.Sunshine |  |
| Super Productivity | com.super_productivity.SuperProductivity | com.super_productivity.SuperProductivity | app-data | flatpak install flathub com.super_productivity.SuperProductivity |  |
| Supermodel | com.supermodel3.Supermodel | com.supermodel3.Supermodel | app-data | flatpak install flathub com.supermodel3.Supermodel |  |
| Supersonic | io.github.dweymouth.supersonic | io.github.dweymouth.supersonic | app-data | flatpak install flathub io.github.dweymouth.supersonic |  |
| SuperTux | org.supertuxproject.SuperTux | org.supertuxproject.SuperTux | app-data | flatpak install flathub org.supertuxproject.SuperTux |  |
| SuperTuxKart | net.supertuxkart.SuperTuxKart | net.supertuxkart.SuperTuxKart | app-data | flatpak install flathub net.supertuxkart.SuperTuxKart |  |
| Surfshark | com.surfshark.Surfshark | com.surfshark.Surfshark | app-data | flatpak install flathub com.surfshark.Surfshark |  |
| Surge Engine | org.opensurge2d.OpenSurge | org.opensurge2d.OpenSurge | app-data | flatpak install flathub org.opensurge2d.OpenSurge |  |
| Sweet Home 3D | com.sweethome3d.Sweethome3d | com.sweethome3d.Sweethome3d | app-data | flatpak install flathub com.sweethome3d.Sweethome3d |  |
| Switcheroo | io.gitlab.adhami3310.Converter | io.gitlab.adhami3310.Converter | app-data | flatpak install flathub io.gitlab.adhami3310.Converter |  |
| Syncthing GTK | me.kozec.syncthingtk | me.kozec.syncthingtk | app-data | flatpak install flathub me.kozec.syncthingtk |  |
| Syncthing Tray | io.github.martchus.syncthingtray | io.github.martchus.syncthingtray | app-data | flatpak install flathub io.github.martchus.syncthingtray |  |
| SyncThingy | com.github.zocker_160.SyncThingy | com.github.zocker_160.SyncThingy | app-data | flatpak install flathub com.github.zocker_160.SyncThingy |  |
| Synology Drive | com.synology.SynologyDrive | com.synology.SynologyDrive | app-data | flatpak install flathub com.synology.SynologyDrive |  |
| SysD Manager | io.github.plrigaux.sysd-manager | io.github.plrigaux.sysd-manager | app-data | flatpak install flathub io.github.plrigaux.sysd-manager |  |
| System Monitoring Center | io.github.hakandundar34coding.system-monitoring-center | io.github.hakandundar34coding.system-monitoring-center | app-data | flatpak install flathub io.github.hakandundar34coding.system-monitoring-center |  |
| Tagger | org.nickvision.tagger | org.nickvision.tagger | app-data | flatpak install flathub org.nickvision.tagger |  |
| Tangram | re.sonny.Tangram | re.sonny.Tangram | app-data | flatpak install flathub re.sonny.Tangram |  |
| Tasks | dev.edfloreshz.Tasks | dev.edfloreshz.Tasks | app-data | flatpak install flathub dev.edfloreshz.Tasks |  |
| Tauon | com.github.taiko2k.tauonmb | com.github.taiko2k.tauonmb | app-data | flatpak install flathub com.github.taiko2k.tauonmb |  |
| TeamSpeak | com.teamspeak.TeamSpeak | com.teamspeak.TeamSpeak | app-data | flatpak install flathub com.teamspeak.TeamSpeak |  |
| TeamSpeak 3 | com.teamspeak.TeamSpeak3 | com.teamspeak.TeamSpeak3 | app-data | flatpak install flathub com.teamspeak.TeamSpeak3 |  |
| Telegram | org.telegram.desktop | org.telegram.desktop | app-data | flatpak install flathub org.telegram.desktop |  |
| Tenacity | org.tenacityaudio.Tenacity | org.tenacityaudio.Tenacity | app-data | flatpak install flathub org.tenacityaudio.Tenacity |  |
| Termius | com.termius.Termius | com.termius.Termius | app-data | flatpak install flathub com.termius.Termius |  |
| TeXstudio | org.texstudio.TeXstudio | org.texstudio.TeXstudio | app-data | flatpak install flathub org.texstudio.TeXstudio |  |
| Text Editor | org.gnome.TextEditor | org.gnome.TextEditor | app-data | flatpak install flathub org.gnome.TextEditor |  |
| The Honkers Railway Launcher | moe.launcher.the-honkers-railway-launcher | moe.launcher.the-honkers-railway-launcher | app-data | flatpak install flathub moe.launcher.the-honkers-railway-launcher |  |
| The Powder Toy | uk.co.powdertoy.tpt | uk.co.powdertoy.tpt | app-data | flatpak install flathub uk.co.powdertoy.tpt |  |
| Thincast Remote Desktop Client | com.thincast.client | com.thincast.client | app-data | flatpak install flathub com.thincast.client |  |
| Thonny | org.thonny.Thonny | org.thonny.Thonny | app-data | flatpak install flathub org.thonny.Thonny |  |
| TickTick | com.ticktick.TickTick | com.ticktick.TickTick | app-data | flatpak install flathub com.ticktick.TickTick |  |
| TIDAL Hi-Fi | com.mastermindzh.tidal-hifi | com.mastermindzh.tidal-hifi | app-data | flatpak install flathub com.mastermindzh.tidal-hifi |  |
| TigerVNC Viewer | org.tigervnc.vncviewer | org.tigervnc.vncviewer | app-data | flatpak install flathub org.tigervnc.vncviewer | Flathub calls it "TigerVNC" |
| Timer | com.github.vikdevelop.timer | com.github.vikdevelop.timer | app-data | flatpak install flathub com.github.vikdevelop.timer |  |
| Tintero | app.tintero.Tintero | app.tintero.Tintero | app-data | flatpak install flathub app.tintero.Tintero |  |
| TinyWiiBackupManager | it.mq1.TinyWiiBackupManager | it.mq1.TinyWiiBackupManager | app-data | flatpak install flathub it.mq1.TinyWiiBackupManager |  |
| TLP-UI | com.github.d4nj1.tlpui | com.github.d4nj1.tlpui | app-data | flatpak install flathub com.github.d4nj1.tlpui |  |
| Todoist | com.todoist.Todoist | com.todoist.Todoist | app-data | flatpak install flathub com.todoist.Todoist |  |
| Tomatillo | io.github.diegopvlk.Tomatillo | io.github.diegopvlk.Tomatillo | app-data | flatpak install flathub io.github.diegopvlk.Tomatillo |  |
| Tonearm | dev.dergs.Tonearm | dev.dergs.Tonearm | app-data | flatpak install flathub dev.dergs.Tonearm |  |
| toolBLEx | io.emeric.toolblex | io.emeric.toolblex | app-data | flatpak install flathub io.emeric.toolblex |  |
| Tor Browser Launcher | org.torproject.torbrowser-launcher | org.torproject.torbrowser-launcher | app-data | flatpak install flathub org.torproject.torbrowser-launcher |  |
| Torrhunt | com.ktechpit.torrhunt | com.ktechpit.torrhunt | app-data | flatpak install flathub com.ktechpit.torrhunt |  |
| Touché | com.github.joseexposito.touche | com.github.joseexposito.touche | app-data | flatpak install flathub com.github.joseexposito.touche |  |
| TradingView | com.tradingview.tradingview | com.tradingview.tradingview | app-data | flatpak install flathub com.tradingview.tradingview |  |
| Transmission | com.transmissionbt.Transmission | com.transmissionbt.Transmission | app-data | flatpak install flathub com.transmissionbt.Transmission |  |
| Trayscale | dev.deedles.Trayscale | dev.deedles.Trayscale | app-data | flatpak install flathub dev.deedles.Trayscale |  |
| Tuba | dev.geopjr.Tuba | dev.geopjr.Tuba | app-data | flatpak install flathub dev.geopjr.Tuba |  |
| Tuner | org.altlinux.Tuner | org.altlinux.Tuner | app-data | flatpak install flathub org.altlinux.Tuner |  |
| TurboWarp | org.turbowarp.TurboWarp | org.turbowarp.TurboWarp | app-data | flatpak install flathub org.turbowarp.TurboWarp |  |
| Tuta (Experimental) | com.tutanota.Tutanota | com.tutanota.Tutanota | app-data | flatpak install flathub com.tutanota.Tutanota |  |
| Tux Fishing | com.voxdsp.TuxFishing | com.voxdsp.TuxFishing | app-data | flatpak install flathub com.voxdsp.TuxFishing |  |
| Tux Paint | org.tuxpaint.Tuxpaint | org.tuxpaint.Tuxpaint | app-data | flatpak install flathub org.tuxpaint.Tuxpaint |  |
| TuxGuitar | ar.com.tuxguitar.TuxGuitar | ar.com.tuxguitar.TuxGuitar | app-data | flatpak install flathub ar.com.tuxguitar.TuxGuitar |  |
| TVHplayer | io.github.mfat.tvhplayer | io.github.mfat.tvhplayer | app-data | flatpak install flathub io.github.mfat.tvhplayer |  |
| Tweaks | dev.edfloreshz.CosmicTweaks | dev.edfloreshz.CosmicTweaks | app-data | flatpak install flathub dev.edfloreshz.CosmicTweaks |  |
| Twintail Launcher | app.twintaillauncher.ttl | app.twintaillauncher.ttl | app-data | flatpak install flathub app.twintaillauncher.ttl |  |
| Typesetter | net.trowell.typesetter | net.trowell.typesetter | app-data | flatpak install flathub net.trowell.typesetter |  |
| Typora | io.typora.Typora | io.typora.Typora | app-data | flatpak install flathub io.typora.Typora |  |
| UEFITool | com.github.LongSoft.UEFITool | com.github.LongSoft.UEFITool | app-data | flatpak install flathub com.github.LongSoft.UEFITool |  |
| uGet | com.ugetdm.uGet | com.ugetdm.uGet | app-data | flatpak install flathub com.ugetdm.uGet |  |
| Ulaa | com.ulaa.Ulaa | com.ulaa.Ulaa | app-data | flatpak install flathub com.ulaa.Ulaa |  |
| UltiMaker Cura | com.ultimaker.cura | com.ultimaker.cura | app-data | flatpak install flathub com.ultimaker.cura |  |
| Ultimate Media Downloader | com.ktechpit.ultimate-media-downloader | com.ktechpit.ultimate-media-downloader | app-data | flatpak install flathub com.ktechpit.ultimate-media-downloader |  |
| Unciv | io.github.yairm210.unciv | io.github.yairm210.unciv | app-data | flatpak install flathub io.github.yairm210.unciv |  |
| Ungoogled Chromium | io.github.ungoogled_software.ungoogled_chromium | io.github.ungoogled_software.ungoogled_chromium | app-data | flatpak install flathub io.github.ungoogled_software.ungoogled_chromium |  |
| Unity Hub | com.unity.UnityHub | com.unity.UnityHub | app-data | flatpak install flathub com.unity.UnityHub |  |
| Upscaler | io.gitlab.theevilskeleton.Upscaler | io.gitlab.theevilskeleton.Upscaler | app-data | flatpak install flathub io.gitlab.theevilskeleton.Upscaler |  |
| Upscayl | org.upscayl.Upscayl | org.upscayl.Upscayl | app-data | flatpak install flathub org.upscayl.Upscayl |  |
| Usermode FTP Server | eu.ithz.umftpd | eu.ithz.umftpd | app-data | flatpak install flathub eu.ithz.umftpd |  |
| VacuumTube | rocks.shy.VacuumTube | rocks.shy.VacuumTube | app-data | flatpak install flathub rocks.shy.VacuumTube |  |
| Valot | com.odnoyko.valot | com.odnoyko.valot | app-data | flatpak install flathub com.odnoyko.valot |  |
| Varia | io.github.giantpinkrobots.varia | io.github.giantpinkrobots.varia | app-data | flatpak install flathub io.github.giantpinkrobots.varia |  |
| Vaults | io.github.mpobaschnig.Vaults | io.github.mpobaschnig.Vaults | app-data | flatpak install flathub io.github.mpobaschnig.Vaults |  |
| Vesktop | dev.vencord.Vesktop | dev.vencord.Vesktop | app-data | flatpak install flathub dev.vencord.Vesktop |  |
| Viber | com.viber.Viber | com.viber.Viber | app-data | flatpak install flathub com.viber.Viber |  |
| vibrantLinux | io.github.libvibrant.vibrantLinux | io.github.libvibrant.vibrantLinux | app-data | flatpak install flathub io.github.libvibrant.vibrantLinux |  |
| VICE | net.sf.VICE | net.sf.VICE | app-data | flatpak install flathub net.sf.VICE |  |
| VidCutter | com.ozmartians.VidCutter | com.ozmartians.VidCutter | app-data | flatpak install flathub com.ozmartians.VidCutter |  |
| Video Downloader | com.github.unrud.VideoDownloader | com.github.unrud.VideoDownloader | app-data | flatpak install flathub com.github.unrud.VideoDownloader |  |
| Video Player | org.gnome.Showtime | org.gnome.Showtime | app-data | flatpak install flathub org.gnome.Showtime |  |
| Video Trimmer | org.gnome.gitlab.YaLTeR.VideoTrimmer | org.gnome.gitlab.YaLTeR.VideoTrimmer | app-data | flatpak install flathub org.gnome.gitlab.YaLTeR.VideoTrimmer |  |
| Videos | org.gnome.Totem | org.gnome.Totem | app-data | flatpak install flathub org.gnome.Totem |  |
| Vim | org.vim.Vim | org.vim.Vim | app-data | flatpak install flathub org.vim.Vim |  |
| Vinegar | org.vinegarhq.Vinegar | org.vinegarhq.Vinegar | app-data | flatpak install flathub org.vinegarhq.Vinegar |  |
| Vintage Story | at.vintagestory.VintageStory | at.vintagestory.VintageStory | app-data | flatpak install flathub at.vintagestory.VintageStory |  |
| Virtual Machine Manager | org.virt_manager.virt-manager | org.virt_manager.virt-manager | app-data | flatpak install flathub org.virt_manager.virt-manager |  |
| Visual Studio Code | com.visualstudio.code | com.visualstudio.code | app-data | flatpak install flathub com.visualstudio.code |  |
| VisualBoyAdvance-M | com.vba_m.visualboyadvance-m | com.vba_m.visualboyadvance-m | app-data | flatpak install flathub com.vba_m.visualboyadvance-m |  |
| Vivaldi | com.vivaldi.Vivaldi | com.vivaldi.Vivaldi | app-data | flatpak install flathub com.vivaldi.Vivaldi |  |
| VLC | org.videolan.VLC | org.videolan.VLC | app-data | flatpak install flathub org.videolan.VLC |  |
| VMPK | net.sourceforge.VMPK | net.sourceforge.VMPK | app-data | flatpak install flathub net.sourceforge.VMPK |  |
| vokoscreenNG | com.github.vkohaupt.vokoscreenNG | com.github.vkohaupt.vokoscreenNG | app-data | flatpak install flathub com.github.vkohaupt.vokoscreenNG |  |
| Volume Control | org.pulseaudio.pavucontrol | org.pulseaudio.pavucontrol | app-data | flatpak install flathub org.pulseaudio.pavucontrol |  |
| Vorta | com.borgbase.Vorta | com.borgbase.Vorta | app-data | flatpak install flathub com.borgbase.Vorta |  |
| VSCodium | com.vscodium.codium | com.vscodium.codium | app-data | flatpak install flathub com.vscodium.codium |  |
| VSCodium - Insiders | com.vscodium.codium-insiders | com.vscodium.codium-insiders | app-data | flatpak install flathub com.vscodium.codium-insiders |  |
| VueScan | com.hamrick.VueScan | com.hamrick.VueScan | app-data | flatpak install flathub com.hamrick.VueScan |  |
| Wallpaper Selector | io.github.davidoc26.wallpaper_selector | io.github.davidoc26.wallpaper_selector | app-data | flatpak install flathub io.github.davidoc26.wallpaper_selector |  |
| Wardrobe | io.github.swordpuffin.wardrobe | io.github.swordpuffin.wardrobe | app-data | flatpak install flathub io.github.swordpuffin.wardrobe |  |
| Warehouse | io.github.flattool.Warehouse | io.github.flattool.Warehouse | app-data | flatpak install flathub io.github.flattool.Warehouse |  |
| Warp | app.drey.Warp | app.drey.Warp | app-data | flatpak install flathub app.drey.Warp |  |
| Warpinator | org.x.Warpinator | org.x.Warpinator | app-data | flatpak install flathub org.x.Warpinator |  |
| Warzone 2100 | net.wz2100.wz2100 | net.wz2100.wz2100 | app-data | flatpak install flathub net.wz2100.wz2100 |  |
| Waterfox | net.waterfox.waterfox | net.waterfox.waterfox | app-data | flatpak install flathub net.waterfox.waterfox |  |
| Wattage | io.github.v81d.Wattage | io.github.v81d.Wattage | app-data | flatpak install flathub io.github.v81d.Wattage |  |
| Weasis | io.github.nroduit.Weasis | io.github.nroduit.Weasis | app-data | flatpak install flathub io.github.nroduit.Weasis |  |
| Weather | org.gnome.Weather | org.gnome.Weather | app-data | flatpak install flathub org.gnome.Weather |  |
| Weather | org.kde.kweather | org.kde.kweather | app-data | flatpak install flathub org.kde.kweather |  |
| Web | org.gnome.Epiphany | org.gnome.Epiphany | app-data | flatpak install flathub org.gnome.Epiphany |  |
| Web App Hub | org.pvermeer.WebAppHub | org.pvermeer.WebAppHub | app-data | flatpak install flathub org.pvermeer.WebAppHub |  |
| Web Apps | net.codelogistics.webapps | net.codelogistics.webapps | app-data | flatpak install flathub net.codelogistics.webapps |  |
| WebCamControl | com.daniel15.wcc | com.daniel15.wcc | app-data | flatpak install flathub com.daniel15.wcc |  |
| Webcamoid | io.github.webcamoid.Webcamoid | io.github.webcamoid.Webcamoid | app-data | flatpak install flathub io.github.webcamoid.Webcamoid |  |
| WebCord | io.github.spacingbat3.webcord | io.github.spacingbat3.webcord | app-data | flatpak install flathub io.github.spacingbat3.webcord |  |
| WebStorm | com.jetbrains.WebStorm | com.jetbrains.WebStorm | app-data | flatpak install flathub com.jetbrains.WebStorm |  |
| WeChat | com.tencent.WeChat | com.tencent.WeChat | app-data | flatpak install flathub com.tencent.WeChat |  |
| Weylus Community Edition | io.github.electronstudio.WeylusCommunityEdition | io.github.electronstudio.WeylusCommunityEdition | app-data | flatpak install flathub io.github.electronstudio.WeylusCommunityEdition |  |
| WezTerm | org.wezfurlong.wezterm | org.wezfurlong.wezterm | app-data | flatpak install flathub org.wezfurlong.wezterm |  |
| Whaler | com.github.sdv43.whaler | com.github.sdv43.whaler | app-data | flatpak install flathub com.github.sdv43.whaler |  |
| What IP | org.gabmus.whatip | org.gabmus.whatip | app-data | flatpak install flathub org.gabmus.whatip |  |
| Whatsie | com.ktechpit.whatsie | com.ktechpit.whatsie | app-data | flatpak install flathub com.ktechpit.whatsie |  |
| Whis | ink.whis.Whis | ink.whis.Whis | app-data | flatpak install flathub ink.whis.Whis |  |
| Whisper | it.mijorus.whisper | it.mijorus.whisper | app-data | flatpak install flathub it.mijorus.whisper |  |
| Wike | com.github.hugolabe.Wike | com.github.hugolabe.Wike | app-data | flatpak install flathub com.github.hugolabe.Wike |  |
| wiliwili | cn.xfangfang.wiliwili | cn.xfangfang.wiliwili | app-data | flatpak install flathub cn.xfangfang.wiliwili |  |
| WinBox | com.mikrotik.WinBox | com.mikrotik.WinBox | app-data | flatpak install flathub com.mikrotik.WinBox |  |
| Wine | org.winehq.Wine | org.winehq.Wine | app-data | flatpak install flathub org.winehq.Wine |  |
| WineCharm | io.github.fastrizwaan.WineCharm | io.github.fastrizwaan.WineCharm | app-data | flatpak install flathub io.github.fastrizwaan.WineCharm |  |
| Wineglass | io.github.aggalex.Wineglass | io.github.aggalex.Wineglass | app-data | flatpak install flathub io.github.aggalex.Wineglass |  |
| WineZGUI | io.github.fastrizwaan.WineZGUI | io.github.fastrizwaan.WineZGUI | app-data | flatpak install flathub io.github.fastrizwaan.WineZGUI |  |
| Wireshark | org.wireshark.Wireshark | org.wireshark.Wireshark | app-data | flatpak install flathub org.wireshark.Wireshark |  |
| WiVRn server | io.github.wivrn.wivrn | io.github.wivrn.wivrn | app-data | flatpak install flathub io.github.wivrn.wivrn |  |
| Wolfenstein: Blade of Agony | com.realm667.Wolfenstein_Blade_of_Agony | com.realm667.Wolfenstein_Blade_of_Agony | app-data | flatpak install flathub com.realm667.Wolfenstein_Blade_of_Agony |  |
| Wonderwall | com.ktechpit.wonderwall | com.ktechpit.wonderwall | app-data | flatpak install flathub com.ktechpit.wonderwall |  |
| Wordbook | dev.mufeed.Wordbook | dev.mufeed.Wordbook | app-data | flatpak install flathub dev.mufeed.Wordbook |  |
| Workbench | re.sonny.Workbench | re.sonny.Workbench | app-data | flatpak install flathub re.sonny.Workbench |  |
| WPS 365 | cn.wps.wps_365 | cn.wps.wps_365 | app-data | flatpak install flathub cn.wps.wps_365 |  |
| WPS Office | com.wps.Office | com.wps.Office | app-data | flatpak install flathub com.wps.Office |  |
| wsjtx | io.sourceforge.wsjt.wsjtx | io.sourceforge.wsjt.wsjtx | app-data | flatpak install flathub io.sourceforge.wsjt.wsjtx |  |
| X Minecraft Launcher | app.xmcl.voxelum | app.xmcl.voxelum | app-data | flatpak install flathub app.xmcl.voxelum |  |
| XClicker | xyz.xclicker.xclicker | xyz.xclicker.xclicker | app-data | flatpak install flathub xyz.xclicker.xclicker |  |
| xemu | app.xemu.xemu | app.xemu.xemu | app-data | flatpak install flathub app.xemu.xemu |  |
| XIVLauncher | dev.goats.xivlauncher | dev.goats.xivlauncher | app-data | flatpak install flathub dev.goats.xivlauncher |  |
| Xmind (2025) | net.xmind.XMind | net.xmind.XMind | app-data | flatpak install flathub net.xmind.XMind | Flathub calls it "Xmind (2026)" |
| XnConvert | com.xnview.XnConvert | com.xnview.XnConvert | app-data | flatpak install flathub com.xnview.XnConvert |  |
| XnView MP | com.xnview.XnViewMP | com.xnview.XnViewMP | app-data | flatpak install flathub com.xnview.XnViewMP |  |
| Xonotic | org.xonotic.Xonotic | org.xonotic.Xonotic | app-data | flatpak install flathub org.xonotic.Xonotic |  |
| Xournal++ | com.github.xournalpp.xournalpp | com.github.xournalpp.xournalpp | app-data | flatpak install flathub com.github.xournalpp.xournalpp |  |
| XStreamingDesktop | io.github.Geocld.XStreamingDesktop | io.github.Geocld.XStreamingDesktop | app-data | flatpak install flathub io.github.Geocld.XStreamingDesktop |  |
| YACReader | com.yacreader.YACReader | com.yacreader.YACReader | app-data | flatpak install flathub com.yacreader.YACReader |  |
| Yakuake | org.kde.yakuake | org.kde.yakuake | app-data | flatpak install flathub org.kde.yakuake |  |
| Yandex Browser | ru.yandex.Browser | ru.yandex.Browser | app-data | flatpak install flathub ru.yandex.Browser |  |
| Ymir | io.github.strikerx3.ymir | io.github.strikerx3.ymir | app-data | flatpak install flathub io.github.strikerx3.ymir |  |
| Yt Downloader | page.codeberg.impromptux.ytdl-gui | page.codeberg.impromptux.ytdl-gui | app-data | flatpak install flathub page.codeberg.impromptux.ytdl-gui |  |
| ytDownloader | io.github.aandrew_me.ytdn | io.github.aandrew_me.ytdn | app-data | flatpak install flathub io.github.aandrew_me.ytdn |  |
| YTMDesktop | app.ytmdesktop.ytmdesktop | app.ytmdesktop.ytmdesktop | app-data | flatpak install flathub app.ytmdesktop.ytmdesktop |  |
| Yubico Authenticator | com.yubico.yubioath | com.yubico.yubioath | app-data | flatpak install flathub com.yubico.yubioath |  |
| ZAP | org.zaproxy.ZAP | org.zaproxy.ZAP | app-data | flatpak install flathub org.zaproxy.ZAP |  |
| ZapZap | com.rtosta.zapzap | com.rtosta.zapzap | app-data | flatpak install flathub com.rtosta.zapzap |  |
| Zed | dev.zed.Zed | dev.zed.Zed | app-data | flatpak install flathub dev.zed.Zed |  |
| Zed Preview | dev.zed.Zed-Preview | dev.zed.Zed-Preview | app-data | flatpak install flathub dev.zed.Zed-Preview |  |
| Zen | app.zen_browser.zen | app.zen_browser.zen | app-data | flatpak install flathub app.zen_browser.zen |  |
| Zenmap | org.nmap.Zenmap | org.nmap.Zenmap | app-data | flatpak install flathub org.nmap.Zenmap |  |
| Zettlr | com.zettlr.Zettlr | com.zettlr.Zettlr | app-data | flatpak install flathub com.zettlr.Zettlr |  |
| Zoom | us.zoom.Zoom | us.zoom.Zoom | app-data | flatpak install flathub us.zoom.Zoom |  |
| Zotero | org.zotero.Zotero | org.zotero.Zotero | app-data | flatpak install flathub org.zotero.Zotero |  |
| ZSNES | io.github.xyproto.zsnes | io.github.xyproto.zsnes | app-data | flatpak install flathub io.github.xyproto.zsnes |  |

</details>
