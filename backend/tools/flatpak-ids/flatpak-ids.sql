-- Proposed apps.flatpak_id values, generated 2026-11-25 by backend/tools/match-flatpak-ids.mjs
-- from https://apps-api.vietnamlinuxfamily.net/api (1002 apps) and the Flathub API (3431 apps listed).
-- high: 961, uncertain: 13 (all 13 checked against Flathub on 2026-11-25 and turned on), none: 28 (not in this
-- file; the 26 end of life ones were removed, delete-eol-apps.sql).
--
-- Review first (flatpak-ids-report.md). Run AFTER migrations/0001_add_apps_flatpak_id.sql:
--   npx wrangler d1 execute vnlf-db --remote --file=tools/flatpak-ids/flatpak-ids.sql
-- Every statement only fills an empty flatpak_id (or replaces the exact old command),
-- so running the file twice changes nothing. API caches expire within 10 minutes.

-- 1. High confidence (961)
UPDATE apps SET flatpak_id = 'com.play0ad.zeroad' WHERE slug = 'com.play0ad.zeroad' AND flatpak_id IS NULL; -- 0 A.D.
UPDATE apps SET flatpak_id = 'com.onepassword.OnePassword' WHERE slug = 'com.onepassword.OnePassword' AND flatpak_id IS NULL; -- 1Password
UPDATE apps SET flatpak_id = 'net.zdechov.app.x2048' WHERE slug = 'net.zdechov.app.x2048' AND flatpak_id IS NULL; -- 2048
UPDATE apps SET flatpak_id = 'com.warlordsoftwares.youtube-downloader-4ktube' WHERE slug = 'com.warlordsoftwares.youtube-downloader-4ktube' AND flatpak_id IS NULL; -- 4KTUBE
UPDATE apps SET flatpak_id = 'me.ahola.aphototoollibre' WHERE slug = 'me.ahola.aphototoollibre' AND flatpak_id IS NULL; -- A Photo Tool (Libre)
UPDATE apps SET flatpak_id = 'com.abisource.AbiWord' WHERE slug = 'com.abisource.AbiWord' AND flatpak_id IS NULL; -- AbiWord
UPDATE apps SET flatpak_id = 'com.actualbudget.actual' WHERE slug = 'com.actualbudget.actual' AND flatpak_id IS NULL; -- Actual Budget
UPDATE apps SET flatpak_id = 'dev.qwery.AddWater' WHERE slug = 'dev.qwery.AddWater' AND flatpak_id IS NULL; -- Add Water
UPDATE apps SET flatpak_id = 'com.adobe.Flash-Player-Projector' WHERE slug = 'com.adobe.Flash-Player-Projector' AND flatpak_id IS NULL; -- Adobe Flash Player
UPDATE apps SET flatpak_id = 'com.adobe.Reader' WHERE slug = 'com.adobe.Reader' AND flatpak_id IS NULL; -- Adobe Reader
UPDATE apps SET flatpak_id = 'io.github.Foldex.AdwSteamGtk' WHERE slug = 'io.github.Foldex.AdwSteamGtk' AND flatpak_id IS NULL; -- AdwSteamGtk
UPDATE apps SET flatpak_id = 'io.github.hkdb.Aerion' WHERE slug = 'io.github.hkdb.Aerion' AND flatpak_id IS NULL; -- Aerion
UPDATE apps SET flatpak_id = 'net.veloren.airshipper' WHERE slug = 'net.veloren.airshipper' AND flatpak_id IS NULL; -- Airshipper
UPDATE apps SET flatpak_id = 'org.gnome.Aisleriot' WHERE slug = 'org.gnome.Aisleriot' AND flatpak_id IS NULL; -- Aisleriot Solitaire
UPDATE apps SET flatpak_id = 'com.albiononline.AlbionOnline' WHERE slug = 'com.albiononline.AlbionOnline' AND flatpak_id IS NULL; -- Albion Online
UPDATE apps SET flatpak_id = 'org.alienarena.alienarena' WHERE slug = 'org.alienarena.alienarena' AND flatpak_id IS NULL; -- Alien Arena
UPDATE apps SET flatpak_id = 'com.jeffser.Alpaca' WHERE slug = 'com.jeffser.Alpaca' AND flatpak_id IS NULL; -- Alpaca
UPDATE apps SET flatpak_id = 'org.kde.amarok' WHERE slug = 'org.kde.amarok' AND flatpak_id IS NULL; -- Amarok
UPDATE apps SET flatpak_id = 'io.bassi.Amberol' WHERE slug = 'io.bassi.Amberol' AND flatpak_id IS NULL; -- Amberol
UPDATE apps SET flatpak_id = 'com.blitterstudio.amiberry' WHERE slug = 'com.blitterstudio.amiberry' AND flatpak_id IS NULL; -- Amiberry
UPDATE apps SET flatpak_id = 'moe.launcher.an-anime-game-launcher' WHERE slug = 'moe.launcher.an-anime-game-launcher' AND flatpak_id IS NULL; -- An Anime Game Launcher
UPDATE apps SET flatpak_id = 'com.google.AndroidStudio' WHERE slug = 'com.google.AndroidStudio' AND flatpak_id IS NULL; -- Android Studio
UPDATE apps SET flatpak_id = 'org.angryip.ipscan' WHERE slug = 'org.angryip.ipscan' AND flatpak_id IS NULL; -- Angry IP Scanner
UPDATE apps SET flatpak_id = 'net.ankiweb.Anki' WHERE slug = 'net.ankiweb.Anki' AND flatpak_id IS NULL; -- Anki
UPDATE apps SET flatpak_id = 'it.fabiodistasio.AntaresSQL' WHERE slug = 'it.fabiodistasio.AntaresSQL' AND flatpak_id IS NULL; -- Antares SQL
UPDATE apps SET flatpak_id = 'io.github.antimicrox.antimicrox' WHERE slug = 'io.github.antimicrox.antimicrox' AND flatpak_id IS NULL; -- AntiMicroX
UPDATE apps SET flatpak_id = 'com.anydesk.Anydesk' WHERE slug = 'com.anydesk.Anydesk' AND flatpak_id IS NULL; -- AnyDesk
UPDATE apps SET flatpak_id = 'io.anytype.anytype' WHERE slug = 'io.anytype.anytype' AND flatpak_id IS NULL; -- Anytype
UPDATE apps SET flatpak_id = 'io.github.victoralvesf.aonsoku' WHERE slug = 'io.github.victoralvesf.aonsoku' AND flatpak_id IS NULL; -- Aonsoku
UPDATE apps SET flatpak_id = 'org.gnome.gitlab.somas.Apostrophe' WHERE slug = 'org.gnome.gitlab.somas.Apostrophe' AND flatpak_id IS NULL; -- Apostrophe
UPDATE apps SET flatpak_id = 'io.appflowy.AppFlowy' WHERE slug = 'io.appflowy.AppFlowy' AND flatpak_id IS NULL; -- AppFlowy
UPDATE apps SET flatpak_id = 'io.github.prateekmedia.appimagepool' WHERE slug = 'io.github.prateekmedia.appimagepool' AND flatpak_id IS NULL; -- AppImage Pool
UPDATE apps SET flatpak_id = 'org.ardour.Ardour' WHERE slug = 'org.ardour.Ardour' AND flatpak_id IS NULL; -- Ardour
UPDATE apps SET flatpak_id = 'cc.arduino.arduinoide' WHERE slug = 'cc.arduino.arduinoide' AND flatpak_id IS NULL; -- Arduino IDE
UPDATE apps SET flatpak_id = 'cc.arduino.IDE2' WHERE slug = 'cc.arduino.IDE2' AND flatpak_id IS NULL; -- Arduino IDE v2
UPDATE apps SET flatpak_id = 'dev.ares.ares' WHERE slug = 'dev.ares.ares' AND flatpak_id IS NULL; -- ares
UPDATE apps SET flatpak_id = 'org.kde.arianna' WHERE slug = 'org.kde.arianna' AND flatpak_id IS NULL; -- Arianna
UPDATE apps SET flatpak_id = 'org.kde.ark' WHERE slug = 'org.kde.ark' AND flatpak_id IS NULL; -- Ark
UPDATE apps SET flatpak_id = 'io.github.nokse22.asciidraw' WHERE slug = 'io.github.nokse22.asciidraw' AND flatpak_id IS NULL; -- ASCII Draw
UPDATE apps SET flatpak_id = 'com.viewizard.AstroMenace' WHERE slug = 'com.viewizard.AstroMenace' AND flatpak_id IS NULL; -- AstroMenace
UPDATE apps SET flatpak_id = 'ca.littlesvr.asunder' WHERE slug = 'ca.littlesvr.asunder' AND flatpak_id IS NULL; -- Asunder
UPDATE apps SET flatpak_id = 'com.atlauncher.ATLauncher' WHERE slug = 'com.atlauncher.ATLauncher' AND flatpak_id IS NULL; -- ATLauncher
UPDATE apps SET flatpak_id = 'org.atheme.audacious' WHERE slug = 'org.atheme.audacious' AND flatpak_id IS NULL; -- Audacious
UPDATE apps SET flatpak_id = 'org.audacityteam.Audacity' WHERE slug = 'org.audacityteam.Audacity' AND flatpak_id IS NULL; -- Audacity
UPDATE apps SET flatpak_id = 'org.gnome.Decibels' WHERE slug = 'org.gnome.Decibels' AND flatpak_id IS NULL; -- Audio Player
UPDATE apps SET flatpak_id = 'de.haeckerfelix.AudioSharing' WHERE slug = 'de.haeckerfelix.AudioSharing' AND flatpak_id IS NULL; -- Audio Sharing
UPDATE apps SET flatpak_id = 'net.audiorelay.AudioRelay' WHERE slug = 'net.audiorelay.AudioRelay' AND flatpak_id IS NULL; -- AudioRelay
UPDATE apps SET flatpak_id = 'org.kde.audiotube' WHERE slug = 'org.kde.audiotube' AND flatpak_id IS NULL; -- AudioTube
UPDATE apps SET flatpak_id = 'io.github.IshuSinghSE.aurynk' WHERE slug = 'io.github.IshuSinghSE.aurynk' AND flatpak_id IS NULL; -- Aurynk
UPDATE apps SET flatpak_id = 'de.bund.ausweisapp.ausweisapp2' WHERE slug = 'de.bund.ausweisapp.ausweisapp2' AND flatpak_id IS NULL; -- AusweisApp
UPDATE apps SET flatpak_id = 'com.belmoussaoui.Authenticator' WHERE slug = 'com.belmoussaoui.Authenticator' AND flatpak_id IS NULL; -- Authenticator
UPDATE apps SET flatpak_id = 'org.avidemux.Avidemux' WHERE slug = 'org.avidemux.Avidemux' AND flatpak_id IS NULL; -- Avidemux
UPDATE apps SET flatpak_id = 'org.azahar_emu.Azahar' WHERE slug = 'org.azahar_emu.Azahar' AND flatpak_id IS NULL; -- Azahar
UPDATE apps SET flatpak_id = 'page.codeberg.tahoso.azul-box' WHERE slug = 'page.codeberg.tahoso.azul-box' AND flatpak_id IS NULL; -- Azul Box
UPDATE apps SET flatpak_id = 'com.bambulab.BambuStudio' WHERE slug = 'com.bambulab.BambuStudio' AND flatpak_id IS NULL; -- Bambu Studio
UPDATE apps SET flatpak_id = 'org.kde.qrca' WHERE slug = 'org.kde.qrca' AND flatpak_id IS NULL; -- Barcode Scanner
UPDATE apps SET flatpak_id = 'com.github.debauchee.barrier' WHERE slug = 'com.github.debauchee.barrier' AND flatpak_id IS NULL; -- Barrier
UPDATE apps SET flatpak_id = 'com.her01n.BatteryInfo' WHERE slug = 'com.her01n.BatteryInfo' AND flatpak_id IS NULL; -- Battery Info
UPDATE apps SET flatpak_id = 'org.wesnoth.Wesnoth' WHERE slug = 'org.wesnoth.Wesnoth' AND flatpak_id IS NULL; -- Battle for Wesnoth
UPDATE apps SET flatpak_id = 'io.github.kolunmi.Bazaar' WHERE slug = 'io.github.kolunmi.Bazaar' AND flatpak_id IS NULL; -- Bazaar
UPDATE apps SET flatpak_id = 'com.beavernotes.beavernotes' WHERE slug = 'com.beavernotes.beavernotes' AND flatpak_id IS NULL; -- Beaver Notes
UPDATE apps SET flatpak_id = 'io.beekeeperstudio.Studio' WHERE slug = 'io.beekeeperstudio.Studio' AND flatpak_id IS NULL; -- Beekeeper Studio
UPDATE apps SET flatpak_id = 'eu.betterbird.Betterbird' WHERE slug = 'eu.betterbird.Betterbird' AND flatpak_id IS NULL; -- Betterbird
UPDATE apps SET flatpak_id = 'info.beyondallreason.bar' WHERE slug = 'info.beyondallreason.bar' AND flatpak_id IS NULL; -- Beyond All Reason
UPDATE apps SET flatpak_id = 'info.bibletime.BibleTime' WHERE slug = 'info.bibletime.BibleTime' AND flatpak_id IS NULL; -- BibleTime
UPDATE apps SET flatpak_id = 'com.biglybt.BiglyBT' WHERE slug = 'com.biglybt.BiglyBT' AND flatpak_id IS NULL; -- BiglyBT
UPDATE apps SET flatpak_id = 'com.ulduzsoft.Birdtray' WHERE slug = 'com.ulduzsoft.Birdtray' AND flatpak_id IS NULL; -- Birdtray
UPDATE apps SET flatpak_id = 'com.bitwarden.desktop' WHERE slug = 'com.bitwarden.desktop' AND flatpak_id IS NULL; -- Bitwarden
UPDATE apps SET flatpak_id = 'com.bitwig.BitwigStudio' WHERE slug = 'com.bitwig.BitwigStudio' AND flatpak_id IS NULL; -- Bitwig Studio
UPDATE apps SET flatpak_id = 'com.rafaelmardojai.Blanket' WHERE slug = 'com.rafaelmardojai.Blanket' AND flatpak_id IS NULL; -- Blanket
UPDATE apps SET flatpak_id = 'org.bleachbit.BleachBit' WHERE slug = 'org.bleachbit.BleachBit' AND flatpak_id IS NULL; -- BleachBit
UPDATE apps SET flatpak_id = 'org.blender.Blender' WHERE slug = 'org.blender.Blender' AND flatpak_id IS NULL; -- Blender
UPDATE apps SET flatpak_id = 'net.blockbench.Blockbench' WHERE slug = 'net.blockbench.Blockbench' AND flatpak_id IS NULL; -- Blockbench
UPDATE apps SET flatpak_id = 'sa.sy.bluerecorder' WHERE slug = 'sa.sy.bluerecorder' AND flatpak_id IS NULL; -- Blue Recorder
UPDATE apps SET flatpak_id = 'app.bluebubbles.BlueBubbles' WHERE slug = 'app.bluebubbles.BlueBubbles' AND flatpak_id IS NULL; -- BlueBubbles
UPDATE apps SET flatpak_id = 'nl.openoffice.bluefish' WHERE slug = 'nl.openoffice.bluefish' AND flatpak_id IS NULL; -- Bluefish
UPDATE apps SET flatpak_id = 'io.github.ebonjaeger.bluejay' WHERE slug = 'io.github.ebonjaeger.bluejay' AND flatpak_id IS NULL; -- Bluejay
UPDATE apps SET flatpak_id = 'net.blix.BlueMail' WHERE slug = 'net.blix.BlueMail' AND flatpak_id IS NULL; -- BlueMail
UPDATE apps SET flatpak_id = 'com.feaneron.Boatswain' WHERE slug = 'com.feaneron.Boatswain' AND flatpak_id IS NULL; -- Boatswain
UPDATE apps SET flatpak_id = 'studio.planetpeanut.Bobby' WHERE slug = 'studio.planetpeanut.Bobby' AND flatpak_id IS NULL; -- Bobby
UPDATE apps SET flatpak_id = 'io.github.philipk.boilr' WHERE slug = 'io.github.philipk.boilr' AND flatpak_id IS NULL; -- BoilR
UPDATE apps SET flatpak_id = 'com.adamcake.Bolt' WHERE slug = 'com.adamcake.Bolt' AND flatpak_id IS NULL; -- Bolt Launcher
UPDATE apps SET flatpak_id = 'io.github.giantpinkrobots.bootqt' WHERE slug = 'io.github.giantpinkrobots.bootqt' AND flatpak_id IS NULL; -- Bootqt
UPDATE apps SET flatpak_id = 'com.usebottles.bottles' WHERE slug = 'com.usebottles.bottles' AND flatpak_id IS NULL; -- Bottles
UPDATE apps SET flatpak_id = 'io.github.dvlv.boxbuddyrs' WHERE slug = 'io.github.dvlv.boxbuddyrs' AND flatpak_id IS NULL; -- BoxBuddy
UPDATE apps SET flatpak_id = 'org.gnome.Boxes' WHERE slug = 'org.gnome.Boxes' AND flatpak_id IS NULL; -- Boxes
UPDATE apps SET flatpak_id = 'io.github.lawstorant.boxflat' WHERE slug = 'io.github.lawstorant.boxflat' AND flatpak_id IS NULL; -- Boxflat
UPDATE apps SET flatpak_id = 'com.boxy_svg.BoxySVG' WHERE slug = 'com.boxy_svg.BoxySVG' AND flatpak_id IS NULL; -- Boxy SVG
UPDATE apps SET flatpak_id = 'org.gnome.Brasero' WHERE slug = 'org.gnome.Brasero' AND flatpak_id IS NULL; -- Brasero
UPDATE apps SET flatpak_id = 'com.brave.Browser' WHERE slug = 'com.brave.Browser' AND flatpak_id IS NULL; -- Brave
UPDATE apps SET flatpak_id = 'org.gnome.BreakTimer' WHERE slug = 'org.gnome.BreakTimer' AND flatpak_id IS NULL; -- Break Timer
UPDATE apps SET flatpak_id = 'io.github.shonebinu.Brief' WHERE slug = 'io.github.shonebinu.Brief' AND flatpak_id IS NULL; -- Brief
UPDATE apps SET flatpak_id = 'io.github.BrisklyDev.Brisk' WHERE slug = 'io.github.BrisklyDev.Brisk' AND flatpak_id IS NULL; -- Brisk
UPDATE apps SET flatpak_id = 'com.usebruno.Bruno' WHERE slug = 'com.usebruno.Bruno' AND flatpak_id IS NULL; -- Bruno
UPDATE apps SET flatpak_id = 'dev.bsnes.bsnes' WHERE slug = 'dev.bsnes.bsnes' AND flatpak_id IS NULL; -- bsnes
UPDATE apps SET flatpak_id = 'org.gnome.Builder' WHERE slug = 'org.gnome.Builder' AND flatpak_id IS NULL; -- Builder
UPDATE apps SET flatpak_id = 'net.portswigger.BurpSuite-Community' WHERE slug = 'net.portswigger.BurpSuite-Community' AND flatpak_id IS NULL; -- Burp Suite Community
UPDATE apps SET flatpak_id = 'com.cassidyjames.butler' WHERE slug = 'com.cassidyjames.butler' AND flatpak_id IS NULL; -- Butler
UPDATE apps SET flatpak_id = 'io.github.chidiwilliams.Buzz' WHERE slug = 'io.github.chidiwilliams.Buzz' AND flatpak_id IS NULL; -- Buzz
UPDATE apps SET flatpak_id = 'org.gnome.Calculator' WHERE slug = 'org.gnome.Calculator' AND flatpak_id IS NULL; -- Calculator
UPDATE apps SET flatpak_id = 'org.kde.kalk' WHERE slug = 'org.kde.kalk' AND flatpak_id IS NULL; -- Calculator
UPDATE apps SET flatpak_id = 'dev.edfloreshz.Calculator' WHERE slug = 'dev.edfloreshz.Calculator' AND flatpak_id IS NULL; -- Calculator
UPDATE apps SET flatpak_id = 'org.gnome.Calendar' WHERE slug = 'org.gnome.Calendar' AND flatpak_id IS NULL; -- Calendar
UPDATE apps SET flatpak_id = 'com.calibre_ebook.calibre' WHERE slug = 'com.calibre_ebook.calibre' AND flatpak_id IS NULL; -- calibre
UPDATE apps SET flatpak_id = 'org.kde.calligra' WHERE slug = 'org.kde.calligra' AND flatpak_id IS NULL; -- Calligra
UPDATE apps SET flatpak_id = 'org.gnome.Calls' WHERE slug = 'org.gnome.Calls' AND flatpak_id IS NULL; -- Calls
UPDATE apps SET flatpak_id = 'org.gnome.Snapshot' WHERE slug = 'org.gnome.Snapshot' AND flatpak_id IS NULL; -- Camera
UPDATE apps SET flatpak_id = 'io.github.cosmic_utils.camera' WHERE slug = 'io.github.cosmic_utils.camera' AND flatpak_id IS NULL; -- Camera
UPDATE apps SET flatpak_id = 'hu.irl.cameractrls' WHERE slug = 'hu.irl.cameractrls' AND flatpak_id IS NULL; -- Cameractrls
UPDATE apps SET flatpak_id = 'com.sindresorhus.Caprine' WHERE slug = 'com.sindresorhus.Caprine' AND flatpak_id IS NULL; -- Caprine
UPDATE apps SET flatpak_id = 'io.frama.tractor.carburetor' WHERE slug = 'io.frama.tractor.carburetor' AND flatpak_id IS NULL; -- Carburetor
UPDATE apps SET flatpak_id = 'space.rirusha.Cassette' WHERE slug = 'space.rirusha.Cassette' AND flatpak_id IS NULL; -- Cassette
UPDATE apps SET flatpak_id = 'it.dottorblaster.cauldron' WHERE slug = 'it.dottorblaster.cauldron' AND flatpak_id IS NULL; -- Cauldron
UPDATE apps SET flatpak_id = 'io.github.TheWisker.Cavasik' WHERE slug = 'io.github.TheWisker.Cavasik' AND flatpak_id IS NULL; -- Cavasik
UPDATE apps SET flatpak_id = 'io.github.celluloid_player.Celluloid' WHERE slug = 'io.github.celluloid_player.Celluloid' AND flatpak_id IS NULL; -- Celluloid
UPDATE apps SET flatpak_id = 'info.cemu.Cemu' WHERE slug = 'info.cemu.Cemu' AND flatpak_id IS NULL; -- Cemu
UPDATE apps SET flatpak_id = 'page.codeberg.censor.Censor' WHERE slug = 'page.codeberg.censor.Censor' AND flatpak_id IS NULL; -- Censor
UPDATE apps SET flatpak_id = 'org.gnome.Characters' WHERE slug = 'org.gnome.Characters' AND flatpak_id IS NULL; -- Characters
UPDATE apps SET flatpak_id = 'com.chatterino.chatterino' WHERE slug = 'com.chatterino.chatterino' AND flatpak_id IS NULL; -- Chatterino
UPDATE apps SET flatpak_id = 'com.cherry_ai.CherryStudio' WHERE slug = 'com.cherry_ai.CherryStudio' AND flatpak_id IS NULL; -- Cherry Studio
UPDATE apps SET flatpak_id = 'net.giuspen.cherrytree' WHERE slug = 'net.giuspen.cherrytree' AND flatpak_id IS NULL; -- CherryTree
UPDATE apps SET flatpak_id = 'io.github.streetpea.Chiaki4deck' WHERE slug = 'io.github.streetpea.Chiaki4deck' AND flatpak_id IS NULL; -- chiaki-ng
UPDATE apps SET flatpak_id = 'org.chromium.Chromium' WHERE slug = 'org.chromium.Chromium' AND flatpak_id IS NULL; -- Chromium Web Browser
UPDATE apps SET flatpak_id = 'com.github.robertsanseries.ciano' WHERE slug = 'com.github.robertsanseries.ciano' AND flatpak_id IS NULL; -- Ciano
UPDATE apps SET flatpak_id = 'io.github.diegopvlk.Cine' WHERE slug = 'io.github.diegopvlk.Cine' AND flatpak_id IS NULL; -- Cine
UPDATE apps SET flatpak_id = 'in.cinny.Cinny' WHERE slug = 'in.cinny.Cinny' AND flatpak_id IS NULL; -- Cinny
UPDATE apps SET flatpak_id = 'io.github.linx_systems.ClamUI' WHERE slug = 'io.github.linx_systems.ClamUI' AND flatpak_id IS NULL; -- ClamUI
UPDATE apps SET flatpak_id = 'de.leopoldluley.Clapgrep' WHERE slug = 'de.leopoldluley.Clapgrep' AND flatpak_id IS NULL; -- Clapgrep
UPDATE apps SET flatpak_id = 'com.github.rafostar.Clapper' WHERE slug = 'com.github.rafostar.Clapper' AND flatpak_id IS NULL; -- Clapper
UPDATE apps SET flatpak_id = 'org.clementine_player.Clementine' WHERE slug = 'org.clementine_player.Clementine' AND flatpak_id IS NULL; -- Clementine Music Player
UPDATE apps SET flatpak_id = 'net.codelogistics.clicker' WHERE slug = 'net.codelogistics.clicker' AND flatpak_id IS NULL; -- Clicker
UPDATE apps SET flatpak_id = 'com.jetbrains.CLion' WHERE slug = 'com.jetbrains.CLion' AND flatpak_id IS NULL; -- CLion
UPDATE apps SET flatpak_id = 'org.kde.kclock' WHERE slug = 'org.kde.kclock' AND flatpak_id IS NULL; -- Clock
UPDATE apps SET flatpak_id = 'org.gnome.clocks' WHERE slug = 'org.gnome.clocks' AND flatpak_id IS NULL; -- Clocks
UPDATE apps SET flatpak_id = 'org.cloudcompare.CloudCompare' WHERE slug = 'org.cloudcompare.CloudCompare' AND flatpak_id IS NULL; -- CloudCompare
UPDATE apps SET flatpak_id = 'vn.hoabinh.quan.CoBang' WHERE slug = 'vn.hoabinh.quan.CoBang' AND flatpak_id IS NULL; -- CoBang
UPDATE apps SET flatpak_id = 'org.cockpit_project.CockpitClient' WHERE slug = 'org.cockpit_project.CockpitClient' AND flatpak_id IS NULL; -- Cockpit Client
UPDATE apps SET flatpak_id = 'org.codeblocks.codeblocks' WHERE slug = 'org.codeblocks.codeblocks' AND flatpak_id IS NULL; -- Code::Blocks
UPDATE apps SET flatpak_id = 'io.github.brunofin.Cohesion' WHERE slug = 'io.github.brunofin.Cohesion' AND flatpak_id IS NULL; -- Cohesion
UPDATE apps SET flatpak_id = 'com.collaboraoffice.Office' WHERE slug = 'com.collaboraoffice.Office' AND flatpak_id IS NULL; -- Collabora Office
UPDATE apps SET flatpak_id = 'dev.geopjr.Collision' WHERE slug = 'dev.geopjr.Collision' AND flatpak_id IS NULL; -- Collision
UPDATE apps SET flatpak_id = 'io.github.schwarzen.colormydesktop' WHERE slug = 'io.github.schwarzen.colormydesktop' AND flatpak_id IS NULL; -- Color My Desktop
UPDATE apps SET flatpak_id = 'nl.hjdskes.gcolor3' WHERE slug = 'nl.hjdskes.gcolor3' AND flatpak_id IS NULL; -- Color Picker
UPDATE apps SET flatpak_id = 'com.ktechpit.colorwall' WHERE slug = 'com.ktechpit.colorwall' AND flatpak_id IS NULL; -- ColorWall
UPDATE apps SET flatpak_id = 'app.comaps.comaps' WHERE slug = 'app.comaps.comaps' AND flatpak_id IS NULL; -- CoMaps
UPDATE apps SET flatpak_id = 'org.gnome.Connections' WHERE slug = 'org.gnome.Connections' AND flatpak_id IS NULL; -- Connections
UPDATE apps SET flatpak_id = 'io.github.wartybix.Constrict' WHERE slug = 'io.github.wartybix.Constrict' AND flatpak_id IS NULL; -- Constrict
UPDATE apps SET flatpak_id = 'org.gnome.Contacts' WHERE slug = 'org.gnome.Contacts' AND flatpak_id IS NULL; -- Contacts
UPDATE apps SET flatpak_id = 'org.contourterminal.Contour' WHERE slug = 'org.contourterminal.Contour' AND flatpak_id IS NULL; -- Contour Terminal Emulator
UPDATE apps SET flatpak_id = 'net.fasterland.converseen' WHERE slug = 'net.fasterland.converseen' AND flatpak_id IS NULL; -- Converseen
UPDATE apps SET flatpak_id = 'io.github.ferraridamiano.ConverterNOW' WHERE slug = 'io.github.ferraridamiano.ConverterNOW' AND flatpak_id IS NULL; -- Converter NOW: Unit Converter
UPDATE apps SET flatpak_id = 'io.github.dimtpap.coppwr' WHERE slug = 'io.github.dimtpap.coppwr' AND flatpak_id IS NULL; -- coppwr
UPDATE apps SET flatpak_id = 'com.github.hluk.copyq' WHERE slug = 'com.github.hluk.copyq' AND flatpak_id IS NULL; -- CopyQ
UPDATE apps SET flatpak_id = 'org.cubocore.CoreKeyboard' WHERE slug = 'org.cubocore.CoreKeyboard' AND flatpak_id IS NULL; -- CoreKeyboard
UPDATE apps SET flatpak_id = 'com.github.geigi.cozy' WHERE slug = 'com.github.geigi.cozy' AND flatpak_id IS NULL; -- Cozy
UPDATE apps SET flatpak_id = 'com.kgurgul.cpuinfo' WHERE slug = 'com.kgurgul.cpuinfo' AND flatpak_id IS NULL; -- CPU Info
UPDATE apps SET flatpak_id = 'io.github.thetumultuousunicornofdarkness.cpu-x' WHERE slug = 'io.github.thetumultuousunicornofdarkness.cpu-x' AND flatpak_id IS NULL; -- CPU-X
UPDATE apps SET flatpak_id = 'org.kde.CrowTranslate' WHERE slug = 'org.kde.CrowTranslate' AND flatpak_id IS NULL; -- Crow Translate
UPDATE apps SET flatpak_id = 'org.cryptomator.Cryptomator' WHERE slug = 'org.cryptomator.Cryptomator' AND flatpak_id IS NULL; -- Cryptomator
UPDATE apps SET flatpak_id = 'com.github.huluti.Curtail' WHERE slug = 'com.github.huluti.Curtail' AND flatpak_id IS NULL; -- Curtail
UPDATE apps SET flatpak_id = 'com.github.qarmin.czkawka' WHERE slug = 'com.github.qarmin.czkawka' AND flatpak_id IS NULL; -- Czkawka
UPDATE apps SET flatpak_id = 'org.darktable.Darktable' WHERE slug = 'org.darktable.Darktable' AND flatpak_id IS NULL; -- darktable
UPDATE apps SET flatpak_id = 'com.jetbrains.DataGrip' WHERE slug = 'com.jetbrains.DataGrip' AND flatpak_id IS NULL; -- DataGrip
UPDATE apps SET flatpak_id = 'io.github.gamingdoom.Datcord' WHERE slug = 'io.github.gamingdoom.Datcord' AND flatpak_id IS NULL; -- Datcord
UPDATE apps SET flatpak_id = 'org.sqlitebrowser.sqlitebrowser' WHERE slug = 'org.sqlitebrowser.sqlitebrowser' AND flatpak_id IS NULL; -- DB Browser for SQLite
UPDATE apps SET flatpak_id = 'io.dbeaver.DBeaverCommunity' WHERE slug = 'io.dbeaver.DBeaverCommunity' AND flatpak_id IS NULL; -- DBeaver Community
UPDATE apps SET flatpak_id = 'ca.desrt.dconf-editor' WHERE slug = 'ca.desrt.dconf-editor' AND flatpak_id IS NULL; -- Dconf Editor
UPDATE apps SET flatpak_id = 'com.belmoussaoui.Decoder' WHERE slug = 'com.belmoussaoui.Decoder' AND flatpak_id IS NULL; -- Decoder
UPDATE apps SET flatpak_id = 'dev.aunetx.deezer' WHERE slug = 'dev.aunetx.deezer' AND flatpak_id IS NULL; -- Deezer
UPDATE apps SET flatpak_id = 'org.gnome.DejaDup' WHERE slug = 'org.gnome.DejaDup' AND flatpak_id IS NULL; -- Déjà Dup Backups
UPDATE apps SET flatpak_id = 'cafe.avery.Delfin' WHERE slug = 'cafe.avery.Delfin' AND flatpak_id IS NULL; -- Delfin
UPDATE apps SET flatpak_id = 'chat.delta.desktop' WHERE slug = 'chat.delta.desktop' AND flatpak_id IS NULL; -- Delta Chat
UPDATE apps SET flatpak_id = 'io.github.marco_calautti.DeltaPatcher' WHERE slug = 'io.github.marco_calautti.DeltaPatcher' AND flatpak_id IS NULL; -- Delta Patcher
UPDATE apps SET flatpak_id = 'org.deluge_torrent.deluge' WHERE slug = 'org.deluge_torrent.deluge' AND flatpak_id IS NULL; -- Deluge
UPDATE apps SET flatpak_id = 'io.github.dubstar_04.design' WHERE slug = 'io.github.dubstar_04.design' AND flatpak_id IS NULL; -- Design
UPDATE apps SET flatpak_id = 'org.deskflow.deskflow' WHERE slug = 'org.deskflow.deskflow' AND flatpak_id IS NULL; -- Deskflow
UPDATE apps SET flatpak_id = 'org.desmume.DeSmuME' WHERE slug = 'org.desmume.DeSmuME' AND flatpak_id IS NULL; -- DeSmuME
UPDATE apps SET flatpak_id = 'com.neatdecisions.Detwinner' WHERE slug = 'com.neatdecisions.Detwinner' AND flatpak_id IS NULL; -- Detwinner
UPDATE apps SET flatpak_id = 'me.iepure.devtoolbox' WHERE slug = 'me.iepure.devtoolbox' AND flatpak_id IS NULL; -- Dev Toolbox
UPDATE apps SET flatpak_id = 'org.diasurgical.DevilutionX' WHERE slug = 'org.diasurgical.DevilutionX' AND flatpak_id IS NULL; -- DevilutionX
UPDATE apps SET flatpak_id = 'app.drey.Dialect' WHERE slug = 'app.drey.Dialect' AND flatpak_id IS NULL; -- Dialect
UPDATE apps SET flatpak_id = 'org.kde.digikam' WHERE slug = 'org.kde.digikam' AND flatpak_id IS NULL; -- digiKam
UPDATE apps SET flatpak_id = 'im.dino.Dino' WHERE slug = 'im.dino.Dino' AND flatpak_id IS NULL; -- Dino
UPDATE apps SET flatpak_id = 'com.discordapp.Discord' WHERE slug = 'com.discordapp.Discord' AND flatpak_id IS NULL; -- Discord
UPDATE apps SET flatpak_id = 'io.github.trigg.discover_overlay' WHERE slug = 'io.github.trigg.discover_overlay' AND flatpak_id IS NULL; -- Discover Overlay
UPDATE apps SET flatpak_id = 'org.gnome.baobab' WHERE slug = 'org.gnome.baobab' AND flatpak_id IS NULL; -- Disk Usage Analyzer
UPDATE apps SET flatpak_id = 'net.displaycal.DisplayCAL' WHERE slug = 'net.displaycal.DisplayCAL' AND flatpak_id IS NULL; -- DisplayCAL
UPDATE apps SET flatpak_id = 'so.libdb.dissent' WHERE slug = 'so.libdb.dissent' AND flatpak_id IS NULL; -- Dissent
UPDATE apps SET flatpak_id = 'com.ranfdev.DistroShelf' WHERE slug = 'com.ranfdev.DistroShelf' AND flatpak_id IS NULL; -- DistroShelf
UPDATE apps SET flatpak_id = 'ro.go.hmlendea.DL-Desktop' WHERE slug = 'ro.go.hmlendea.DL-Desktop' AND flatpak_id IS NULL; -- DL: language lessons
UPDATE apps SET flatpak_id = 'org.gnome.SimpleScan' WHERE slug = 'org.gnome.SimpleScan' AND flatpak_id IS NULL; -- Document Scanner
UPDATE apps SET flatpak_id = 'org.gnome.Papers' WHERE slug = 'org.gnome.Papers' AND flatpak_id IS NULL; -- Document Viewer
UPDATE apps SET flatpak_id = 'org.gnome.Evince' WHERE slug = 'org.gnome.Evince' AND flatpak_id IS NULL; -- Document Viewer
UPDATE apps SET flatpak_id = 'org.kde.dolphin' WHERE slug = 'org.kde.dolphin' AND flatpak_id IS NULL; -- Dolphin
UPDATE apps SET flatpak_id = 'org.DolphinEmu.dolphin-emu' WHERE slug = 'org.DolphinEmu.dolphin-emu' AND flatpak_id IS NULL; -- Dolphin Emulator
UPDATE apps SET flatpak_id = 'io.github.dosbox-staging' WHERE slug = 'io.github.dosbox-staging' AND flatpak_id IS NULL; -- DOSBox Staging
UPDATE apps SET flatpak_id = 'com.dosbox_x.DOSBox-X' WHERE slug = 'com.dosbox_x.DOSBox-X' AND flatpak_id IS NULL; -- DOSBox-X
UPDATE apps SET flatpak_id = 'org.kartkrew.RingRacers' WHERE slug = 'org.kartkrew.RingRacers' AND flatpak_id IS NULL; -- Dr. Robotnik's Ring Racers
UPDATE apps SET flatpak_id = 'org.kde.dragonplayer' WHERE slug = 'org.kde.dragonplayer' AND flatpak_id IS NULL; -- Dragon Player
UPDATE apps SET flatpak_id = 'com.jgraph.drawio.desktop' WHERE slug = 'com.jgraph.drawio.desktop' AND flatpak_id IS NULL; -- draw.io
UPDATE apps SET flatpak_id = 'com.github.maoschanz.drawing' WHERE slug = 'com.github.maoschanz.drawing' AND flatpak_id IS NULL; -- Drawing
UPDATE apps SET flatpak_id = 'com.dropbox.Client' WHERE slug = 'com.dropbox.Client' AND flatpak_id IS NULL; -- Dropbox
UPDATE apps SET flatpak_id = 'io.github.revisto.drum-machine' WHERE slug = 'io.github.revisto.drum-machine' AND flatpak_id IS NULL; -- Drum Machine
UPDATE apps SET flatpak_id = 'org.dune3d.dune3d' WHERE slug = 'org.dune3d.dune3d' AND flatpak_id IS NULL; -- Dune 3D
UPDATE apps SET flatpak_id = 'app.drey.EarTag' WHERE slug = 'app.drey.EarTag' AND flatpak_id IS NULL; -- Ear Tag
UPDATE apps SET flatpak_id = 'me.timschneeberger.GalaxyBudsClient' WHERE slug = 'me.timschneeberger.GalaxyBudsClient' AND flatpak_id IS NULL; -- Earbud manager for Galaxy Buds
UPDATE apps SET flatpak_id = 'com.github.wwmm.easyeffects' WHERE slug = 'com.github.wwmm.easyeffects' AND flatpak_id IS NULL; -- Easy Effects
UPDATE apps SET flatpak_id = 'org.dupot.easyflatpak' WHERE slug = 'org.dupot.easyflatpak' AND flatpak_id IS NULL; -- Easyflatpak
UPDATE apps SET flatpak_id = 'org.gnome.EasyTAG' WHERE slug = 'org.gnome.EasyTAG' AND flatpak_id IS NULL; -- EasyTAG
UPDATE apps SET flatpak_id = 'org.eclipse.Java' WHERE slug = 'org.eclipse.Java' AND flatpak_id IS NULL; -- Eclipse IDE for Java Developers
UPDATE apps SET flatpak_id = 'io.github.ecotubehq.player' WHERE slug = 'io.github.ecotubehq.player' AND flatpak_id IS NULL; -- EcoTubeHQ
UPDATE apps SET flatpak_id = 'com.github.vladimiry.ElectronMail' WHERE slug = 'com.github.vladimiry.ElectronMail' AND flatpak_id IS NULL; -- ElectronMail
UPDATE apps SET flatpak_id = 'im.riot.Riot' WHERE slug = 'im.riot.Riot' AND flatpak_id IS NULL; -- Element
UPDATE apps SET flatpak_id = 'org.kde.elisa' WHERE slug = 'org.kde.elisa' AND flatpak_id IS NULL; -- Elisa
UPDATE apps SET flatpak_id = 're.sonny.Eloquent' WHERE slug = 're.sonny.Eloquent' AND flatpak_id IS NULL; -- Eloquent
UPDATE apps SET flatpak_id = 'io.github.getnf.embellish' WHERE slug = 'io.github.getnf.embellish' AND flatpak_id IS NULL; -- Embellish
UPDATE apps SET flatpak_id = 'com.tomjwatson.Emote' WHERE slug = 'com.tomjwatson.Emote' AND flatpak_id IS NULL; -- Emote
UPDATE apps SET flatpak_id = 'io.github.endless_sky.endless_sky' WHERE slug = 'io.github.endless_sky.endless_sky' AND flatpak_id IS NULL; -- Endless Sky
UPDATE apps SET flatpak_id = 'io.github.falldaemon.engplayer' WHERE slug = 'io.github.falldaemon.engplayer' AND flatpak_id IS NULL; -- EngPlayer
UPDATE apps SET flatpak_id = 'io.ente.auth' WHERE slug = 'io.ente.auth' AND flatpak_id IS NULL; -- Ente Auth
UPDATE apps SET flatpak_id = 'io.ente.photos' WHERE slug = 'io.ente.photos' AND flatpak_id IS NULL; -- Ente Photos
UPDATE apps SET flatpak_id = 'com.github.jkotra.eovpn' WHERE slug = 'com.github.jkotra.eovpn' AND flatpak_id IS NULL; -- eOVPN
UPDATE apps SET flatpak_id = 'net.epson.epsonscan2' WHERE slug = 'net.epson.epsonscan2' AND flatpak_id IS NULL; -- Epson Scan 2
UPDATE apps SET flatpak_id = 'org.equicord.equibop' WHERE slug = 'org.equicord.equibop' AND flatpak_id IS NULL; -- Equibop
UPDATE apps SET flatpak_id = 'io.github.mrvladus.List' WHERE slug = 'io.github.mrvladus.List' AND flatpak_id IS NULL; -- Errands
UPDATE apps SET flatpak_id = 'io.github.htkhiem.Euphonica' WHERE slug = 'io.github.htkhiem.Euphonica' AND flatpak_id IS NULL; -- Euphonica
UPDATE apps SET flatpak_id = 'org.gnome.Evolution' WHERE slug = 'org.gnome.Evolution' AND flatpak_id IS NULL; -- Evolution
UPDATE apps SET flatpak_id = 'io.github.cosmic_utils.Examine' WHERE slug = 'io.github.cosmic_utils.Examine' AND flatpak_id IS NULL; -- Examine
UPDATE apps SET flatpak_id = 'io.github.nokse22.Exhibit' WHERE slug = 'io.github.nokse22.Exhibit' AND flatpak_id IS NULL; -- Exhibit
UPDATE apps SET flatpak_id = 'com.mattjakeman.ExtensionManager' WHERE slug = 'com.mattjakeman.ExtensionManager' AND flatpak_id IS NULL; -- Extension Manager
UPDATE apps SET flatpak_id = 'org.gnome.Extensions' WHERE slug = 'org.gnome.Extensions' AND flatpak_id IS NULL; -- Extensions
UPDATE apps SET flatpak_id = 'net.sourceforge.ExtremeTuxRacer' WHERE slug = 'net.sourceforge.ExtremeTuxRacer' AND flatpak_id IS NULL; -- Extreme Tux Racer
UPDATE apps SET flatpak_id = 'org.gnome.eog' WHERE slug = 'org.gnome.eog' AND flatpak_id IS NULL; -- Eye of GNOME
UPDATE apps SET flatpak_id = 'com.github.finefindus.eyedropper' WHERE slug = 'com.github.finefindus.eyedropper' AND flatpak_id IS NULL; -- Eyedropper
UPDATE apps SET flatpak_id = 'org.kde.falkon' WHERE slug = 'org.kde.falkon' AND flatpak_id IS NULL; -- Falkon
UPDATE apps SET flatpak_id = 'io.github.wiiznokes.fan-control' WHERE slug = 'io.github.wiiznokes.fan-control' AND flatpak_id IS NULL; -- Fan Control
UPDATE apps SET flatpak_id = 'com.fastmail.Fastmail' WHERE slug = 'com.fastmail.Fastmail' AND flatpak_id IS NULL; -- Fastmail
UPDATE apps SET flatpak_id = 'io.github.Faugus.faugus-launcher' WHERE slug = 'io.github.Faugus.faugus-launcher' AND flatpak_id IS NULL; -- Faugus Launcher
UPDATE apps SET flatpak_id = 'org.fcitx.Fcitx5' WHERE slug = 'org.fcitx.Fcitx5' AND flatpak_id IS NULL; -- Fcitx 5
UPDATE apps SET flatpak_id = 'org.fedoraproject.MediaWriter' WHERE slug = 'org.fedoraproject.MediaWriter' AND flatpak_id IS NULL; -- Fedora Media Writer
UPDATE apps SET flatpak_id = 'org.ferdium.Ferdium' WHERE slug = 'org.ferdium.Ferdium' AND flatpak_id IS NULL; -- Ferdium
UPDATE apps SET flatpak_id = 'io.github.olaproeis.Ferrite' WHERE slug = 'io.github.olaproeis.Ferrite' AND flatpak_id IS NULL; -- Ferrite
UPDATE apps SET flatpak_id = 'com.github.Bleuzen.FFaudioConverter' WHERE slug = 'com.github.Bleuzen.FFaudioConverter' AND flatpak_id IS NULL; -- FFaudioConverter
UPDATE apps SET flatpak_id = 'de.capypara.FieldMonitor' WHERE slug = 'de.capypara.FieldMonitor' AND flatpak_id IS NULL; -- Field Monitor
UPDATE apps SET flatpak_id = 'com.fightcade.Fightcade' WHERE slug = 'com.fightcade.Fightcade' AND flatpak_id IS NULL; -- Fightcade
UPDATE apps SET flatpak_id = 'com.expidusos.file_manager' WHERE slug = 'com.expidusos.file_manager' AND flatpak_id IS NULL; -- File Manager
UPDATE apps SET flatpak_id = 'org.gnome.FileRoller' WHERE slug = 'org.gnome.FileRoller' AND flatpak_id IS NULL; -- File Roller
UPDATE apps SET flatpak_id = 'com.github.ADBeveridge.Raider' WHERE slug = 'com.github.ADBeveridge.Raider' AND flatpak_id IS NULL; -- File Shredder
UPDATE apps SET flatpak_id = 'org.kde.filelight' WHERE slug = 'org.kde.filelight' AND flatpak_id IS NULL; -- Filelight
UPDATE apps SET flatpak_id = 'org.filezillaproject.Filezilla' WHERE slug = 'org.filezillaproject.Filezilla' AND flatpak_id IS NULL; -- FileZilla
UPDATE apps SET flatpak_id = 'com.unicornsonlsd.finamp' WHERE slug = 'com.unicornsonlsd.finamp' AND flatpak_id IS NULL; -- Finamp
UPDATE apps SET flatpak_id = 'org.garudalinux.firedragon' WHERE slug = 'org.garudalinux.firedragon' AND flatpak_id IS NULL; -- FireDragon
UPDATE apps SET flatpak_id = 'org.mozilla.firefox' WHERE slug = 'org.mozilla.firefox' AND flatpak_id IS NULL; -- Firefox
UPDATE apps SET flatpak_id = 'org.firestormviewer.FirestormViewer' WHERE slug = 'org.firestormviewer.FirestormViewer' AND flatpak_id IS NULL; -- Firestorm Viewer
UPDATE apps SET flatpak_id = 'org.gnome.Firmware' WHERE slug = 'org.gnome.Firmware' AND flatpak_id IS NULL; -- Firmware
UPDATE apps SET flatpak_id = 'com.github.Flacon' WHERE slug = 'com.github.Flacon' AND flatpak_id IS NULL; -- Flacon
UPDATE apps SET flatpak_id = 'org.flameshot.Flameshot' WHERE slug = 'org.flameshot.Flameshot' AND flatpak_id IS NULL; -- Flameshot
UPDATE apps SET flatpak_id = 'com.github.tchx84.Flatseal' WHERE slug = 'com.github.tchx84.Flatseal' AND flatpak_id IS NULL; -- Flatseal
UPDATE apps SET flatpak_id = 'io.github.giantpinkrobots.flatsweep' WHERE slug = 'io.github.giantpinkrobots.flatsweep' AND flatpak_id IS NULL; -- Flatsweep
UPDATE apps SET flatpak_id = 'org.flightgear.FlightGear' WHERE slug = 'org.flightgear.FlightGear' AND flatpak_id IS NULL; -- FlightGear
UPDATE apps SET flatpak_id = 'one.ablaze.floorp' WHERE slug = 'one.ablaze.floorp' AND flatpak_id IS NULL; -- Floorp
UPDATE apps SET flatpak_id = 'io.github.jliljebl.Flowblade' WHERE slug = 'io.github.jliljebl.Flowblade' AND flatpak_id IS NULL; -- Flowblade
UPDATE apps SET flatpak_id = 'im.fluffychat.Fluffychat' WHERE slug = 'im.fluffychat.Fluffychat' AND flatpak_id IS NULL; -- FluffyChat
UPDATE apps SET flatpak_id = 'org.flycast.Flycast' WHERE slug = 'org.flycast.Flycast' AND flatpak_id IS NULL; -- Flycast
UPDATE apps SET flatpak_id = 'org.gottcode.FocusWriter' WHERE slug = 'org.gottcode.FocusWriter' AND flatpak_id IS NULL; -- FocusWriter
UPDATE apps SET flatpak_id = 'com.github.johnfactotum.Foliate' WHERE slug = 'com.github.johnfactotum.Foliate' AND flatpak_id IS NULL; -- Foliate
UPDATE apps SET flatpak_id = 'com.toolstack.Folio' WHERE slug = 'com.toolstack.Folio' AND flatpak_id IS NULL; -- Folio
UPDATE apps SET flatpak_id = 'org.gustavoperedo.FontDownloader' WHERE slug = 'org.gustavoperedo.FontDownloader' AND flatpak_id IS NULL; -- Font Downloader
UPDATE apps SET flatpak_id = 'org.gnome.font-viewer' WHERE slug = 'org.gnome.font-viewer' AND flatpak_id IS NULL; -- Fonts
UPDATE apps SET flatpak_id = 'io.gitlab.adhami3310.Footage' WHERE slug = 'io.gitlab.adhami3310.Footage' AND flatpak_id IS NULL; -- Footage
UPDATE apps SET flatpak_id = 'org.fooyin.fooyin' WHERE slug = 'org.fooyin.fooyin' AND flatpak_id IS NULL; -- fooyin
UPDATE apps SET flatpak_id = 'com.jwestall.Forecast' WHERE slug = 'com.jwestall.Forecast' AND flatpak_id IS NULL; -- Forecast
UPDATE apps SET flatpak_id = 'com.warlordsoftwares.formatlab' WHERE slug = 'com.warlordsoftwares.formatlab' AND flatpak_id IS NULL; -- FormatLab
UPDATE apps SET flatpak_id = 'app.fotema.Fotema' WHERE slug = 'app.fotema.Fotema' AND flatpak_id IS NULL; -- Fotema
UPDATE apps SET flatpak_id = 'org.gnome.Fractal' WHERE slug = 'org.gnome.Fractal' AND flatpak_id IS NULL; -- Fractal
UPDATE apps SET flatpak_id = 'de.haeckerfelix.Fragments' WHERE slug = 'de.haeckerfelix.Fragments' AND flatpak_id IS NULL; -- Fragments
UPDATE apps SET flatpak_id = 'com.meetfranz.Franz' WHERE slug = 'com.meetfranz.Franz' AND flatpak_id IS NULL; -- Franz
UPDATE apps SET flatpak_id = 'org.freac.freac' WHERE slug = 'org.freac.freac' AND flatpak_id IS NULL; -- fre:ac
UPDATE apps SET flatpak_id = 'dev.fredol.open-tv' WHERE slug = 'dev.fredol.open-tv' AND flatpak_id IS NULL; -- Fred TV
UPDATE apps SET flatpak_id = 'org.freedownloadmanager.Manager' WHERE slug = 'org.freedownloadmanager.Manager' AND flatpak_id IS NULL; -- Free Download Manager
UPDATE apps SET flatpak_id = 'org.freecad.FreeCAD' WHERE slug = 'org.freecad.FreeCAD' AND flatpak_id IS NULL; -- FreeCAD
UPDATE apps SET flatpak_id = 'org.freefilesync.FreeFileSync' WHERE slug = 'org.freefilesync.FreeFileSync' AND flatpak_id IS NULL; -- FreeFileSync
UPDATE apps SET flatpak_id = 'org.freeplane.App' WHERE slug = 'org.freeplane.App' AND flatpak_id IS NULL; -- Freeplane
UPDATE apps SET flatpak_id = 'com.freerdp.FreeRDP' WHERE slug = 'com.freerdp.FreeRDP' AND flatpak_id IS NULL; -- FreeRDP Client
UPDATE apps SET flatpak_id = 'io.freetubeapp.FreeTube' WHERE slug = 'io.freetubeapp.FreeTube' AND flatpak_id IS NULL; -- FreeTube
UPDATE apps SET flatpak_id = 'dev.bragefuglseth.Fretboard' WHERE slug = 'dev.bragefuglseth.Fretboard' AND flatpak_id IS NULL; -- Fretboard
UPDATE apps SET flatpak_id = 'com.github.tenderowl.frog' WHERE slug = 'com.github.tenderowl.frog' AND flatpak_id IS NULL; -- Frog
UPDATE apps SET flatpak_id = 'io.github.cboxdoerfer.FSearch' WHERE slug = 'io.github.cboxdoerfer.FSearch' AND flatpak_id IS NULL; -- FSearch
UPDATE apps SET flatpak_id = 'dev.ftb.ftb-app' WHERE slug = 'dev.ftb.ftb-app' AND flatpak_id IS NULL; -- FTB Electron App
UPDATE apps SET flatpak_id = 'com.geeks3d.furmark' WHERE slug = 'com.geeks3d.furmark' AND flatpak_id IS NULL; -- FurMark
UPDATE apps SET flatpak_id = 'com.github.gabutakut.gabutdm' WHERE slug = 'com.github.gabutakut.gabutdm' AND flatpak_id IS NULL; -- Gabut Download Manager
UPDATE apps SET flatpak_id = 'space.gaiasky.GaiaSky' WHERE slug = 'space.gaiasky.GaiaSky' AND flatpak_id IS NULL; -- Gaia Sky
UPDATE apps SET flatpak_id = 'org.gajim.Gajim' WHERE slug = 'org.gajim.Gajim' AND flatpak_id IS NULL; -- Gajim
UPDATE apps SET flatpak_id = 'org.gaphor.Gaphor' WHERE slug = 'org.gaphor.Gaphor' AND flatpak_id IS NULL; -- Gaphor
UPDATE apps SET flatpak_id = 'com.github.neithern.g4music' WHERE slug = 'com.github.neithern.g4music' AND flatpak_id IS NULL; -- Gapless
UPDATE apps SET flatpak_id = 'io.github.josephmawa.Gauge' WHERE slug = 'io.github.josephmawa.Gauge' AND flatpak_id IS NULL; -- Gauge
UPDATE apps SET flatpak_id = 'org.kde.gcompris' WHERE slug = 'org.kde.gcompris' AND flatpak_id IS NULL; -- GCompris
UPDATE apps SET flatpak_id = 'io.gdevelop.ide' WHERE slug = 'io.gdevelop.ide' AND flatpak_id IS NULL; -- GDevelop
UPDATE apps SET flatpak_id = 'io.github.realmazharhussain.GdmSettings' WHERE slug = 'io.github.realmazharhussain.GdmSettings' AND flatpak_id IS NULL; -- GDM Settings
UPDATE apps SET flatpak_id = 'org.geany.Geany' WHERE slug = 'org.geany.Geany' AND flatpak_id IS NULL; -- Geany
UPDATE apps SET flatpak_id = 'it.mijorus.gearlever' WHERE slug = 'it.mijorus.gearlever' AND flatpak_id IS NULL; -- Gear Lever
UPDATE apps SET flatpak_id = 'org.gnome.Geary' WHERE slug = 'org.gnome.Geary' AND flatpak_id IS NULL; -- Geary
UPDATE apps SET flatpak_id = 'org.gnome.gedit' WHERE slug = 'org.gnome.gedit' AND flatpak_id IS NULL; -- gedit
UPDATE apps SET flatpak_id = 'com.geekbench.Geekbench6' WHERE slug = 'com.geekbench.Geekbench6' AND flatpak_id IS NULL; -- Geekbench 6
UPDATE apps SET flatpak_id = 'io.github.astralvixen.geforce-infinity' WHERE slug = 'io.github.astralvixen.geforce-infinity' AND flatpak_id IS NULL; -- GeForce Infinity
UPDATE apps SET flatpak_id = 'io.github.hmlendea.geforcenow-electron' WHERE slug = 'io.github.hmlendea.geforcenow-electron' AND flatpak_id IS NULL; -- GeForce NOW Electron
UPDATE apps SET flatpak_id = 'io.m51.Gelly' WHERE slug = 'io.m51.Gelly' AND flatpak_id IS NULL; -- Gelly
UPDATE apps SET flatpak_id = 'org.geogebra.GeoGebra' WHERE slug = 'org.geogebra.GeoGebra' AND flatpak_id IS NULL; -- GeoGebra
UPDATE apps SET flatpak_id = 'app.eduroam.geteduroam' WHERE slug = 'app.eduroam.geteduroam' AND flatpak_id IS NULL; -- geteduroam
UPDATE apps SET flatpak_id = 'org.gnome.GHex' WHERE slug = 'org.gnome.GHex' AND flatpak_id IS NULL; -- GHex
UPDATE apps SET flatpak_id = 'org.ghidra_sre.Ghidra' WHERE slug = 'org.ghidra_sre.Ghidra' AND flatpak_id IS NULL; -- Ghidra
UPDATE apps SET flatpak_id = 'org.kde.ghostwriter' WHERE slug = 'org.kde.ghostwriter' AND flatpak_id IS NULL; -- ghostwriter
UPDATE apps SET flatpak_id = 'io.github.manisandro.gImageReader' WHERE slug = 'io.github.manisandro.gImageReader' AND flatpak_id IS NULL; -- gImageReader
UPDATE apps SET flatpak_id = 'io.github.shiftey.Desktop' WHERE slug = 'io.github.shiftey.Desktop' AND flatpak_id IS NULL; -- GitHub Desktop
UPDATE apps SET flatpak_id = 'com.axosoft.GitKraken' WHERE slug = 'com.axosoft.GitKraken' AND flatpak_id IS NULL; -- GitKraken
UPDATE apps SET flatpak_id = 'com.github.Murmele.Gittyup' WHERE slug = 'com.github.Murmele.Gittyup' AND flatpak_id IS NULL; -- Gittyup
UPDATE apps SET flatpak_id = 'org.gnome.Chess' WHERE slug = 'org.gnome.Chess' AND flatpak_id IS NULL; -- GNOME Chess
UPDATE apps SET flatpak_id = 'org.gnome.NetworkDisplays' WHERE slug = 'org.gnome.NetworkDisplays' AND flatpak_id IS NULL; -- GNOME Network Displays
UPDATE apps SET flatpak_id = 'org.gnome.Sudoku' WHERE slug = 'org.gnome.Sudoku' AND flatpak_id IS NULL; -- GNOME Sudoku
UPDATE apps SET flatpak_id = 'org.gnu.emacs' WHERE slug = 'org.gnu.emacs' AND flatpak_id IS NULL; -- GNU Emacs
UPDATE apps SET flatpak_id = 'org.gimp.GIMP' WHERE slug = 'org.gimp.GIMP' AND flatpak_id IS NULL; -- GNU Image Manipulation Program
UPDATE apps SET flatpak_id = 'org.octave.Octave' WHERE slug = 'org.octave.Octave' AND flatpak_id IS NULL; -- GNU Octave
UPDATE apps SET flatpak_id = 'org.gnucash.GnuCash' WHERE slug = 'org.gnucash.GnuCash' AND flatpak_id IS NULL; -- GnuCash
UPDATE apps SET flatpak_id = 'org.godotengine.Godot' WHERE slug = 'org.godotengine.Godot' AND flatpak_id IS NULL; -- Godot Engine
UPDATE apps SET flatpak_id = 'io.github.MakovWait.Godots' WHERE slug = 'io.github.MakovWait.Godots' AND flatpak_id IS NULL; -- Godots
UPDATE apps SET flatpak_id = 'io.gitlab.Goodvibes' WHERE slug = 'io.gitlab.Goodvibes' AND flatpak_id IS NULL; -- Goodvibes
UPDATE apps SET flatpak_id = 'io.github.milkshiift.GoofCord' WHERE slug = 'io.github.milkshiift.GoofCord' AND flatpak_id IS NULL; -- GoofCord
UPDATE apps SET flatpak_id = 'com.google.Chrome' WHERE slug = 'com.google.Chrome' AND flatpak_id IS NULL; -- Google Chrome
UPDATE apps SET flatpak_id = 'com.google.ChromeDev' WHERE slug = 'com.google.ChromeDev' AND flatpak_id IS NULL; -- Google Chrome (unstable)
UPDATE apps SET flatpak_id = 'com.google.EarthPro' WHERE slug = 'com.google.EarthPro' AND flatpak_id IS NULL; -- Google Earth Pro
UPDATE apps SET flatpak_id = 'com.gopeed.Gopeed' WHERE slug = 'com.gopeed.Gopeed' AND flatpak_id IS NULL; -- Gopeed
UPDATE apps SET flatpak_id = 'io.github.gopher64.gopher64' WHERE slug = 'io.github.gopher64.gopher64' AND flatpak_id IS NULL; -- Gopher64
UPDATE apps SET flatpak_id = 'io.github.benjamimgois.goverlay' WHERE slug = 'io.github.benjamimgois.goverlay' AND flatpak_id IS NULL; -- Goverlay
UPDATE apps SET flatpak_id = 'io.gpt4all.gpt4all' WHERE slug = 'io.gpt4all.gpt4all' AND flatpak_id IS NULL; -- GPT4ALL
UPDATE apps SET flatpak_id = 'com.dec05eba.gpu_screen_recorder' WHERE slug = 'com.dec05eba.gpu_screen_recorder' AND flatpak_id IS NULL; -- GPU Screen Recorder
UPDATE apps SET flatpak_id = 'io.github.arunsivaramanneo.GPUViewer' WHERE slug = 'io.github.arunsivaramanneo.GPUViewer' AND flatpak_id IS NULL; -- GPU-Viewer
UPDATE apps SET flatpak_id = 'dk.gqrx.gqrx' WHERE slug = 'dk.gqrx.gqrx' AND flatpak_id IS NULL; -- Gqrx
UPDATE apps SET flatpak_id = 'be.alexandervanhee.gradia' WHERE slug = 'be.alexandervanhee.gradia' AND flatpak_id IS NULL; -- Gradia
UPDATE apps SET flatpak_id = 'org.gramps_project.Gramps' WHERE slug = 'org.gramps_project.Gramps' AND flatpak_id IS NULL; -- Gramps
UPDATE apps SET flatpak_id = 'se.sjoerd.Graphs' WHERE slug = 'se.sjoerd.Graphs' AND flatpak_id IS NULL; -- Graphs
UPDATE apps SET flatpak_id = 'app.grayjay.Grayjay' WHERE slug = 'app.grayjay.Grayjay' AND flatpak_id IS NULL; -- Grayjay
UPDATE apps SET flatpak_id = 'io.github.unknownskl.greenlight' WHERE slug = 'io.github.unknownskl.greenlight' AND flatpak_id IS NULL; -- Greenlight
UPDATE apps SET flatpak_id = 'org.gnome.gThumb' WHERE slug = 'org.gnome.gThumb' AND flatpak_id IS NULL; -- gThumb Image Viewer
UPDATE apps SET flatpak_id = 'org.gtkhash.gtkhash' WHERE slug = 'org.gtkhash.gtkhash' AND flatpak_id IS NULL; -- GtkHash
UPDATE apps SET flatpak_id = 'com.leinardi.gst' WHERE slug = 'com.leinardi.gst' AND flatpak_id IS NULL; -- GtkStressTesting
UPDATE apps SET flatpak_id = 'org.guitarix.Guitarix' WHERE slug = 'org.guitarix.Guitarix' AND flatpak_id IS NULL; -- guitarix
UPDATE apps SET flatpak_id = 'org.kde.gwenview' WHERE slug = 'org.kde.gwenview' AND flatpak_id IS NULL; -- Gwenview
UPDATE apps SET flatpak_id = 'com.github.ztefn.haguichi' WHERE slug = 'com.github.ztefn.haguichi' AND flatpak_id IS NULL; -- Haguichi
UPDATE apps SET flatpak_id = 'io.github.hakuneko.HakuNeko' WHERE slug = 'io.github.hakuneko.HakuNeko' AND flatpak_id IS NULL; -- HakuNeko
UPDATE apps SET flatpak_id = 'org.squidowl.halloy' WHERE slug = 'org.squidowl.halloy' AND flatpak_id IS NULL; -- Halloy
UPDATE apps SET flatpak_id = 'fr.handbrake.ghb' WHERE slug = 'fr.handbrake.ghb' AND flatpak_id IS NULL; -- HandBrake
UPDATE apps SET flatpak_id = 'org.linux_hardware.hw-probe' WHERE slug = 'org.linux_hardware.hw-probe' AND flatpak_id IS NULL; -- Hardware Probe
UPDATE apps SET flatpak_id = 'org.kde.haruna' WHERE slug = 'org.kde.haruna' AND flatpak_id IS NULL; -- Haruna
UPDATE apps SET flatpak_id = 'io.kinvolk.Headlamp' WHERE slug = 'io.kinvolk.Headlamp' AND flatpak_id IS NULL; -- Headlamp
UPDATE apps SET flatpak_id = 'io.github.hedge_dev.hedgemodmanager' WHERE slug = 'io.github.hedge_dev.hedgemodmanager' AND flatpak_id IS NULL; -- Hedge Mod Manager
UPDATE apps SET flatpak_id = 'org.pipewire.Helvum' WHERE slug = 'org.pipewire.Helvum' AND flatpak_id IS NULL; -- Helvum
UPDATE apps SET flatpak_id = 'com.heroicgameslauncher.hgl' WHERE slug = 'com.heroicgameslauncher.hgl' AND flatpak_id IS NULL; -- Heroic
UPDATE apps SET flatpak_id = 'io.github.N3kosempai.hetairos-ai' WHERE slug = 'io.github.N3kosempai.hetairos-ai' AND flatpak_id IS NULL; -- Hetairos AI
UPDATE apps SET flatpak_id = 'io.github.jeffshee.Hidamari' WHERE slug = 'io.github.jeffshee.Hidamari' AND flatpak_id IS NULL; -- Hidamari
UPDATE apps SET flatpak_id = 'io.github.nokse22.high-tide' WHERE slug = 'io.github.nokse22.high-tide' AND flatpak_id IS NULL; -- High Tide
UPDATE apps SET flatpak_id = 'fr.free.Homebank' WHERE slug = 'fr.free.Homebank' AND flatpak_id IS NULL; -- HomeBank
UPDATE apps SET flatpak_id = 'org.gabmus.hydrapaper' WHERE slug = 'org.gabmus.hydrapaper' AND flatpak_id IS NULL; -- HydraPaper
UPDATE apps SET flatpak_id = 'xyz.hyperplay.HyperPlay' WHERE slug = 'xyz.hyperplay.HyperPlay' AND flatpak_id IS NULL; -- HyperPlay
UPDATE apps SET flatpak_id = 'website.i2pd.i2pd' WHERE slug = 'website.i2pd.i2pd' AND flatpak_id IS NULL; -- i2pd
UPDATE apps SET flatpak_id = 'org.gnome.design.IconLibrary' WHERE slug = 'org.gnome.design.IconLibrary' AND flatpak_id IS NULL; -- Icon Library
UPDATE apps SET flatpak_id = 'org.gnome.gitlab.YaLTeR.Identity' WHERE slug = 'org.gnome.gitlab.YaLTeR.Identity' AND flatpak_id IS NULL; -- Identity
UPDATE apps SET flatpak_id = 'io.github.flattool.Ignition' WHERE slug = 'io.github.flattool.Ignition' AND flatpak_id IS NULL; -- Ignition
UPDATE apps SET flatpak_id = 'com.github.utsushi.Utsushi' WHERE slug = 'com.github.utsushi.Utsushi' AND flatpak_id IS NULL; -- Image Scan
UPDATE apps SET flatpak_id = 'org.gnome.Loupe' WHERE slug = 'org.gnome.Loupe' AND flatpak_id IS NULL; -- Image Viewer
UPDATE apps SET flatpak_id = 'net.werwolv.ImHex' WHERE slug = 'net.werwolv.ImHex' AND flatpak_id IS NULL; -- ImHex
UPDATE apps SET flatpak_id = 'io.gitlab.adhami3310.Impression' WHERE slug = 'io.gitlab.adhami3310.Impression' AND flatpak_id IS NULL; -- Impression
UPDATE apps SET flatpak_id = 'com.indomitusgroup.indipdf' WHERE slug = 'com.indomitusgroup.indipdf' AND flatpak_id IS NULL; -- indiPDF
UPDATE apps SET flatpak_id = 'com.infinipaint.infinipaint' WHERE slug = 'com.infinipaint.infinipaint' AND flatpak_id IS NULL; -- Infinipaint
UPDATE apps SET flatpak_id = 'org.inkscape.Inkscape' WHERE slug = 'org.inkscape.Inkscape' AND flatpak_id IS NULL; -- Inkscape
UPDATE apps SET flatpak_id = 'rest.insomnia.Insomnia' WHERE slug = 'rest.insomnia.Insomnia' AND flatpak_id IS NULL; -- Insomnia
UPDATE apps SET flatpak_id = 'io.github.nokse22.inspector' WHERE slug = 'io.github.nokse22.inspector' AND flatpak_id IS NULL; -- Inspector
UPDATE apps SET flatpak_id = 'com.jetbrains.IntelliJ-IDEA-Ultimate' WHERE slug = 'com.jetbrains.IntelliJ-IDEA-Ultimate' AND flatpak_id IS NULL; -- IntelliJ IDEA
UPDATE apps SET flatpak_id = 'com.jetbrains.IntelliJ-IDEA-Community' WHERE slug = 'com.jetbrains.IntelliJ-IDEA-Community' AND flatpak_id IS NULL; -- IntelliJ IDEA Open
UPDATE apps SET flatpak_id = 'org.gnome.World.Iotas' WHERE slug = 'org.gnome.World.Iotas' AND flatpak_id IS NULL; -- Iotas
UPDATE apps SET flatpak_id = 'io.github.bytezz.IPLookup' WHERE slug = 'io.github.bytezz.IPLookup' AND flatpak_id IS NULL; -- IP Lookup
UPDATE apps SET flatpak_id = 'org.kde.isoimagewriter' WHERE slug = 'org.kde.isoimagewriter' AND flatpak_id IS NULL; -- ISO Image Writer
UPDATE apps SET flatpak_id = 'io.itch.itch' WHERE slug = 'io.itch.itch' AND flatpak_id IS NULL; -- itch
UPDATE apps SET flatpak_id = 'com.github.skylot.jadx' WHERE slug = 'com.github.skylot.jadx' AND flatpak_id IS NULL; -- JADX
UPDATE apps SET flatpak_id = 'me.timschneeberger.jdsp4linux' WHERE slug = 'me.timschneeberger.jdsp4linux' AND flatpak_id IS NULL; -- JamesDSP
UPDATE apps SET flatpak_id = 'net.jami.Jami' WHERE slug = 'net.jami.Jami' AND flatpak_id IS NULL; -- Jami
UPDATE apps SET flatpak_id = 'org.jamovi.jamovi' WHERE slug = 'org.jamovi.jamovi' AND flatpak_id IS NULL; -- jamovi
UPDATE apps SET flatpak_id = 'ai.jan.Jan' WHERE slug = 'ai.jan.Jan' AND flatpak_id IS NULL; -- Jan
UPDATE apps SET flatpak_id = 'org.jaspstats.JASP' WHERE slug = 'org.jaspstats.JASP' AND flatpak_id IS NULL; -- JASP
UPDATE apps SET flatpak_id = 'page.codeberg.JakobDev.jdMinecraftLauncher' WHERE slug = 'page.codeberg.JakobDev.jdMinecraftLauncher' AND flatpak_id IS NULL; -- jdMinecraftLauncher
UPDATE apps SET flatpak_id = 'org.jdownloader.JDownloader' WHERE slug = 'org.jdownloader.JDownloader' AND flatpak_id IS NULL; -- JDownloader
UPDATE apps SET flatpak_id = 'org.jellyfin.JellyfinDesktop' WHERE slug = 'org.jellyfin.JellyfinDesktop' AND flatpak_id IS NULL; -- Jellyfin Desktop
UPDATE apps SET flatpak_id = 'com.github.iwalton3.jellyfin-mpv-shim' WHERE slug = 'com.github.iwalton3.jellyfin-mpv-shim' AND flatpak_id IS NULL; -- Jellyfin MPV Shim
UPDATE apps SET flatpak_id = 'org.jellyfin.JellyfinServer' WHERE slug = 'org.jellyfin.JellyfinServer' AND flatpak_id IS NULL; -- Jellyfin Server
UPDATE apps SET flatpak_id = 'io.github.hvdwofl.jExifToolGUI' WHERE slug = 'io.github.hvdwofl.jExifToolGUI' AND flatpak_id IS NULL; -- jExifToolGUI
UPDATE apps SET flatpak_id = 'org.jitsi.jitsi-meet' WHERE slug = 'org.jitsi.jitsi-meet' AND flatpak_id IS NULL; -- Jitsi Meet
UPDATE apps SET flatpak_id = 'net.cozic.joplin_desktop' WHERE slug = 'net.cozic.joplin_desktop' AND flatpak_id IS NULL; -- Joplin
UPDATE apps SET flatpak_id = 're.sonny.Junction' WHERE slug = 're.sonny.Junction' AND flatpak_id IS NULL; -- Junction
UPDATE apps SET flatpak_id = 'net.mkiol.Jupii' WHERE slug = 'net.mkiol.Jupii' AND flatpak_id IS NULL; -- Jupii
UPDATE apps SET flatpak_id = 'org.kde.kaffeine' WHERE slug = 'org.kde.kaffeine' AND flatpak_id IS NULL; -- Kaffeine
UPDATE apps SET flatpak_id = 'org.kde.kalzium' WHERE slug = 'org.kde.kalzium' AND flatpak_id IS NULL; -- Kalzium
UPDATE apps SET flatpak_id = 'org.kde.kamoso' WHERE slug = 'org.kde.kamoso' AND flatpak_id IS NULL; -- Kamoso
UPDATE apps SET flatpak_id = 'io.github.tobagin.karere' WHERE slug = 'io.github.tobagin.karere' AND flatpak_id IS NULL; -- Karere
UPDATE apps SET flatpak_id = 'org.kde.kasts' WHERE slug = 'org.kde.kasts' AND flatpak_id IS NULL; -- Kasts
UPDATE apps SET flatpak_id = 'org.kde.kate' WHERE slug = 'org.kde.kate' AND flatpak_id IS NULL; -- Kate
UPDATE apps SET flatpak_id = 'io.github.Predidit.Kazumi' WHERE slug = 'io.github.Predidit.Kazumi' AND flatpak_id IS NULL; -- Kazumi
UPDATE apps SET flatpak_id = 'org.kde.kcalc' WHERE slug = 'org.kde.kcalc' AND flatpak_id IS NULL; -- KCalc
UPDATE apps SET flatpak_id = 'org.kde.kdenlive' WHERE slug = 'org.kde.kdenlive' AND flatpak_id IS NULL; -- Kdenlive
UPDATE apps SET flatpak_id = 'org.kde.kdf' WHERE slug = 'org.kde.kdf' AND flatpak_id IS NULL; -- KDiskFree
UPDATE apps SET flatpak_id = 'io.github.jonmagon.kdiskmark' WHERE slug = 'io.github.jonmagon.kdiskmark' AND flatpak_id IS NULL; -- KDiskMark
UPDATE apps SET flatpak_id = 'org.keepassxc.KeePassXC' WHERE slug = 'org.keepassxc.KeePassXC' AND flatpak_id IS NULL; -- KeePassXC
UPDATE apps SET flatpak_id = 'com.carpeludum.KegaFusion' WHERE slug = 'com.carpeludum.KegaFusion' AND flatpak_id IS NULL; -- Kega Fusion
UPDATE apps SET flatpak_id = 'org.kde.kget' WHERE slug = 'org.kde.kget' AND flatpak_id IS NULL; -- KGet
UPDATE apps SET flatpak_id = 'org.kicad.KiCad' WHERE slug = 'org.kicad.KiCad' AND flatpak_id IS NULL; -- KiCad
UPDATE apps SET flatpak_id = 'org.kde.kid3' WHERE slug = 'org.kde.kid3' AND flatpak_id IS NULL; -- Kid3
UPDATE apps SET flatpak_id = 'org.kiwix.desktop' WHERE slug = 'org.kiwix.desktop' AND flatpak_id IS NULL; -- Kiwix
UPDATE apps SET flatpak_id = 'org.kde.kleopatra' WHERE slug = 'org.kde.kleopatra' AND flatpak_id IS NULL; -- Kleopatra
UPDATE apps SET flatpak_id = 'io.github.N3kosempai.klia-store' WHERE slug = 'io.github.N3kosempai.klia-store' AND flatpak_id IS NULL; -- Klia Store
UPDATE apps SET flatpak_id = 'org.kde.kmahjongg' WHERE slug = 'org.kde.kmahjongg' AND flatpak_id IS NULL; -- KMahjongg
UPDATE apps SET flatpak_id = 'org.kde.kmines' WHERE slug = 'org.kde.kmines' AND flatpak_id IS NULL; -- KMines
UPDATE apps SET flatpak_id = 'org.kde.kmymoney' WHERE slug = 'org.kde.kmymoney' AND flatpak_id IS NULL; -- KMyMoney
UPDATE apps SET flatpak_id = 'tv.kodi.Kodi' WHERE slug = 'tv.kodi.Kodi' AND flatpak_id IS NULL; -- Kodi
UPDATE apps SET flatpak_id = 'org.learningequality.Kolibri' WHERE slug = 'org.learningequality.Kolibri' AND flatpak_id IS NULL; -- Kolibri
UPDATE apps SET flatpak_id = 'org.kde.kolourpaint' WHERE slug = 'org.kde.kolourpaint' AND flatpak_id IS NULL; -- KolourPaint
UPDATE apps SET flatpak_id = 'info.febvre.Komikku' WHERE slug = 'info.febvre.Komikku' AND flatpak_id IS NULL; -- Komikku
UPDATE apps SET flatpak_id = 'org.kde.konsole' WHERE slug = 'org.kde.konsole' AND flatpak_id IS NULL; -- Konsole
UPDATE apps SET flatpak_id = 'org.kde.kontact' WHERE slug = 'org.kde.kontact' AND flatpak_id IS NULL; -- Kontact
UPDATE apps SET flatpak_id = 'io.github.DenysMb.Kontainer' WHERE slug = 'io.github.DenysMb.Kontainer' AND flatpak_id IS NULL; -- Kontainer
UPDATE apps SET flatpak_id = 'io.github.troyeguo.koodo-reader' WHERE slug = 'io.github.troyeguo.koodo-reader' AND flatpak_id IS NULL; -- Koodo Reader
UPDATE apps SET flatpak_id = 'io.github.seadve.Kooha' WHERE slug = 'io.github.seadve.Kooha' AND flatpak_id IS NULL; -- Kooha
UPDATE apps SET flatpak_id = 'rocks.koreader.KOReader' WHERE slug = 'rocks.koreader.KOReader' AND flatpak_id IS NULL; -- KOReader
UPDATE apps SET flatpak_id = 'org.kde.kpat' WHERE slug = 'org.kde.kpat' AND flatpak_id IS NULL; -- KPatience
UPDATE apps SET flatpak_id = 'org.kde.krdc' WHERE slug = 'org.kde.krdc' AND flatpak_id IS NULL; -- KRDC
UPDATE apps SET flatpak_id = 'org.kde.krename' WHERE slug = 'org.kde.krename' AND flatpak_id IS NULL; -- Krename
UPDATE apps SET flatpak_id = 'org.kde.krita' WHERE slug = 'org.kde.krita' AND flatpak_id IS NULL; -- Krita
UPDATE apps SET flatpak_id = 'org.kde.kshisen' WHERE slug = 'org.kde.kshisen' AND flatpak_id IS NULL; -- KShisen
UPDATE apps SET flatpak_id = 'org.ksnip.ksnip' WHERE slug = 'org.ksnip.ksnip' AND flatpak_id IS NULL; -- ksnip
UPDATE apps SET flatpak_id = 'org.kde.kstars' WHERE slug = 'org.kde.kstars' AND flatpak_id IS NULL; -- KStars
UPDATE apps SET flatpak_id = 'org.kde.ksudoku' WHERE slug = 'org.kde.ksudoku' AND flatpak_id IS NULL; -- KSudoku
UPDATE apps SET flatpak_id = 'org.fkoehler.KTailctl' WHERE slug = 'org.fkoehler.KTailctl' AND flatpak_id IS NULL; -- KTailctl
UPDATE apps SET flatpak_id = 'org.kde.ktorrent' WHERE slug = 'org.kde.ktorrent' AND flatpak_id IS NULL; -- KTorrent
UPDATE apps SET flatpak_id = 'org.kde.ktouch' WHERE slug = 'org.kde.ktouch' AND flatpak_id IS NULL; -- KTouch
UPDATE apps SET flatpak_id = 'org.kde.kwrite' WHERE slug = 'org.kde.kwrite' AND flatpak_id IS NULL; -- KWrite
UPDATE apps SET flatpak_id = 'org.kde.labplot' WHERE slug = 'org.kde.labplot' AND flatpak_id IS NULL; -- LabPlot
UPDATE apps SET flatpak_id = 'net.labymod.LabyMod' WHERE slug = 'net.labymod.LabyMod' AND flatpak_id IS NULL; -- LabyMod
UPDATE apps SET flatpak_id = 'io.github.ilya_zlobintsev.LACT' WHERE slug = 'io.github.ilya_zlobintsev.LACT' AND flatpak_id IS NULL; -- LACT
UPDATE apps SET flatpak_id = 'io.github.ladaapp.lada' WHERE slug = 'io.github.ladaapp.lada' AND flatpak_id IS NULL; -- Lada
UPDATE apps SET flatpak_id = 'dev.lapce.lapce' WHERE slug = 'dev.lapce.lapce' AND flatpak_id IS NULL; -- Lapce
UPDATE apps SET flatpak_id = 'eu.jumplink.Learn6502' WHERE slug = 'eu.jumplink.Learn6502' AND flatpak_id IS NULL; -- Learn 6502 Assembly
UPDATE apps SET flatpak_id = 'ch.tlaun.TL' WHERE slug = 'ch.tlaun.TL' AND flatpak_id IS NULL; -- Legacy Launcher
UPDATE apps SET flatpak_id = 'io.github.vmkspv.lenspect' WHERE slug = 'io.github.vmkspv.lenspect' AND flatpak_id IS NULL; -- Lenspect
UPDATE apps SET flatpak_id = 'org.leocad.LeoCAD' WHERE slug = 'org.leocad.LeoCAD' AND flatpak_id IS NULL; -- LeoCAD
UPDATE apps SET flatpak_id = 'org.librecad.librecad' WHERE slug = 'org.librecad.librecad' AND flatpak_id IS NULL; -- LibreCAD
UPDATE apps SET flatpak_id = 'org.libreoffice.LibreOffice' WHERE slug = 'org.libreoffice.LibreOffice' AND flatpak_id IS NULL; -- LibreOffice
UPDATE apps SET flatpak_id = 'org.librepcb.LibrePCB' WHERE slug = 'org.librepcb.LibrePCB' AND flatpak_id IS NULL; -- LibrePCB
UPDATE apps SET flatpak_id = 'com.github.libresprite.LibreSprite' WHERE slug = 'com.github.libresprite.LibreSprite' AND flatpak_id IS NULL; -- LibreSprite
UPDATE apps SET flatpak_id = 'io.gitlab.librewolf-community' WHERE slug = 'io.gitlab.librewolf-community' AND flatpak_id IS NULL; -- LibreWolf
UPDATE apps SET flatpak_id = 'io.github.limo_app.limo' WHERE slug = 'io.github.limo_app.limo' AND flatpak_id IS NULL; -- Limo
UPDATE apps SET flatpak_id = 'com.qq.QQ' WHERE slug = 'com.qq.QQ' AND flatpak_id IS NULL; -- Linux QQ
UPDATE apps SET flatpak_id = 'io.github.debasish_patra_1987.linuxthemestore' WHERE slug = 'io.github.debasish_patra_1987.linuxthemestore' AND flatpak_id IS NULL; -- Linux Theme Store
UPDATE apps SET flatpak_id = 'net.sapples.LiveCaptions' WHERE slug = 'net.sapples.LiveCaptions' AND flatpak_id IS NULL; -- Live Captions
UPDATE apps SET flatpak_id = 'io.lmms.LMMS' WHERE slug = 'io.lmms.LMMS' AND flatpak_id IS NULL; -- LMMS
UPDATE apps SET flatpak_id = 'org.localsend.localsend_app' WHERE slug = 'org.localsend.localsend_app' AND flatpak_id IS NULL; -- LocalSend
UPDATE apps SET flatpak_id = 'dev.ters.LocalTranslate' WHERE slug = 'dev.ters.LocalTranslate' AND flatpak_id IS NULL; -- LocalTranslate
UPDATE apps SET flatpak_id = 'org.gnome.Logs' WHERE slug = 'org.gnome.Logs' AND flatpak_id IS NULL; -- Logs
UPDATE apps SET flatpak_id = 'com.logseq.Logseq' WHERE slug = 'com.logseq.Logseq' AND flatpak_id IS NULL; -- Logseq
UPDATE apps SET flatpak_id = 'org.gnome.Lollypop' WHERE slug = 'org.gnome.Lollypop' AND flatpak_id IS NULL; -- Lollypop
UPDATE apps SET flatpak_id = 'no.mifi.losslesscut' WHERE slug = 'no.mifi.losslesscut' AND flatpak_id IS NULL; -- LosslessCut
UPDATE apps SET flatpak_id = 'org.luanti.luanti' WHERE slug = 'org.luanti.luanti' AND flatpak_id IS NULL; -- Luanti
UPDATE apps SET flatpak_id = 'com.github.mtkennerly.ludusavi' WHERE slug = 'com.github.mtkennerly.ludusavi' AND flatpak_id IS NULL; -- Ludusavi
UPDATE apps SET flatpak_id = 'com.sidevesh.Luminance' WHERE slug = 'com.sidevesh.Luminance' AND flatpak_id IS NULL; -- Luminance
UPDATE apps SET flatpak_id = 'com.icons8.Lunacy' WHERE slug = 'com.icons8.Lunacy' AND flatpak_id IS NULL; -- Lunacy
UPDATE apps SET flatpak_id = 'com.lunarclient.LunarClient' WHERE slug = 'com.lunarclient.LunarClient' AND flatpak_id IS NULL; -- Lunar Client
UPDATE apps SET flatpak_id = 'net.lutris.Lutris' WHERE slug = 'net.lutris.Lutris' AND flatpak_id IS NULL; -- Lutris
UPDATE apps SET flatpak_id = 'net.sourceforge.m64py.M64Py' WHERE slug = 'net.sourceforge.m64py.M64Py' AND flatpak_id IS NULL; -- M64Py
UPDATE apps SET flatpak_id = 'org.gnome.Mahjongg' WHERE slug = 'org.gnome.Mahjongg' AND flatpak_id IS NULL; -- Mahjongg
UPDATE apps SET flatpak_id = 'com.getmailspring.Mailspring' WHERE slug = 'com.getmailspring.Mailspring' AND flatpak_id IS NULL; -- Mailspring
UPDATE apps SET flatpak_id = 'io.github.alescdb.mailviewer' WHERE slug = 'io.github.alescdb.mailviewer' AND flatpak_id IS NULL; -- MailViewer
UPDATE apps SET flatpak_id = 'page.codeberg.libre_menu_editor.LibreMenuEditor' WHERE slug = 'page.codeberg.libre_menu_editor.LibreMenuEditor' AND flatpak_id IS NULL; -- Main Menu
UPDATE apps SET flatpak_id = 'com.makemkv.MakeMKV' WHERE slug = 'com.makemkv.MakeMKV' AND flatpak_id IS NULL; -- MakeMKV
UPDATE apps SET flatpak_id = 'org.mamedev.MAME' WHERE slug = 'org.mamedev.MAME' AND flatpak_id IS NULL; -- MAME
UPDATE apps SET flatpak_id = 'io.github.radiolamp.mangojuice' WHERE slug = 'io.github.radiolamp.mangojuice' AND flatpak_id IS NULL; -- Mango Juice
UPDATE apps SET flatpak_id = 'org.gnome.Maps' WHERE slug = 'org.gnome.Maps' AND flatpak_id IS NULL; -- Maps
UPDATE apps SET flatpak_id = 'org.kde.marble' WHERE slug = 'org.kde.marble' AND flatpak_id IS NULL; -- Marble
UPDATE apps SET flatpak_id = 'com.github.marktext.marktext' WHERE slug = 'com.github.marktext.marktext' AND flatpak_id IS NULL; -- MarkText
UPDATE apps SET flatpak_id = 'net.code_industry.MasterPDFEditor' WHERE slug = 'net.code_industry.MasterPDFEditor' AND flatpak_id IS NULL; -- Master PDF Editor
UPDATE apps SET flatpak_id = 'io.github.kukuruzka165.materialgram' WHERE slug = 'io.github.kukuruzka165.materialgram' AND flatpak_id IS NULL; -- materialgram
UPDATE apps SET flatpak_id = 'us.materialio.Materialious' WHERE slug = 'us.materialio.Materialious' AND flatpak_id IS NULL; -- Materialious
UPDATE apps SET flatpak_id = 'com.mattermost.Desktop' WHERE slug = 'com.mattermost.Desktop' AND flatpak_id IS NULL; -- Mattermost
UPDATE apps SET flatpak_id = 'ru.max.MAX' WHERE slug = 'ru.max.MAX' AND flatpak_id IS NULL; -- MAX
UPDATE apps SET flatpak_id = 'com.markopejic.downloader' WHERE slug = 'com.markopejic.downloader' AND flatpak_id IS NULL; -- Media Downloader
UPDATE apps SET flatpak_id = 'com.warlordsoftwares.media-downloader' WHERE slug = 'com.warlordsoftwares.media-downloader' AND flatpak_id IS NULL; -- Media Downloader
UPDATE apps SET flatpak_id = 'io.github.mhogomchungu.media-downloader' WHERE slug = 'io.github.mhogomchungu.media-downloader' AND flatpak_id IS NULL; -- Media Downloader
UPDATE apps SET flatpak_id = 'net.mediaarea.MediaInfo' WHERE slug = 'net.mediaarea.MediaInfo' AND flatpak_id IS NULL; -- MediaInfo
UPDATE apps SET flatpak_id = 'de.mediathekview.MediathekView' WHERE slug = 'de.mediathekview.MediathekView' AND flatpak_id IS NULL; -- MediathekView
UPDATE apps SET flatpak_id = 'org.gnome.meld' WHERE slug = 'org.gnome.meld' AND flatpak_id IS NULL; -- Meld
UPDATE apps SET flatpak_id = 'net.kuribo64.melonDS' WHERE slug = 'net.kuribo64.melonDS' AND flatpak_id IS NULL; -- melonDS
UPDATE apps SET flatpak_id = 'org.bluesabre.MenuLibre' WHERE slug = 'org.bluesabre.MenuLibre' AND flatpak_id IS NULL; -- MenuLibre
UPDATE apps SET flatpak_id = 'org.kde.merkuro' WHERE slug = 'org.kde.merkuro' AND flatpak_id IS NULL; -- Merkuro
UPDATE apps SET flatpak_id = 'net.meshlab.MeshLab' WHERE slug = 'net.meshlab.MeshLab' AND flatpak_id IS NULL; -- MeshLab
UPDATE apps SET flatpak_id = 'org.meshtastic.meshtasticd' WHERE slug = 'org.meshtastic.meshtasticd' AND flatpak_id IS NULL; -- Meshtastic
UPDATE apps SET flatpak_id = 'com.gitlab.bitseater.meteo' WHERE slug = 'com.gitlab.bitseater.meteo' AND flatpak_id IS NULL; -- Meteo
UPDATE apps SET flatpak_id = 'io.mgba.mGBA' WHERE slug = 'io.mgba.mGBA' AND flatpak_id IS NULL; -- mGBA
UPDATE apps SET flatpak_id = 'com.microsoft.Edge' WHERE slug = 'com.microsoft.Edge' AND flatpak_id IS NULL; -- Microsoft Edge
UPDATE apps SET flatpak_id = 'io.github.gaheldev.Millisecond' WHERE slug = 'io.github.gaheldev.Millisecond' AND flatpak_id IS NULL; -- Millisecond
UPDATE apps SET flatpak_id = 'com.github.Anuken.Mindustry' WHERE slug = 'com.github.Anuken.Mindustry' AND flatpak_id IS NULL; -- Mindustry
UPDATE apps SET flatpak_id = 'com.mojang.Minecraft' WHERE slug = 'com.mojang.Minecraft' AND flatpak_id IS NULL; -- Minecraft
UPDATE apps SET flatpak_id = 'io.mrarm.mcpelauncher' WHERE slug = 'io.mrarm.mcpelauncher' AND flatpak_id IS NULL; -- Minecraft Bedrock Launcher
UPDATE apps SET flatpak_id = 'com.thebrokenrail.MCPIReborn' WHERE slug = 'com.thebrokenrail.MCPIReborn' AND flatpak_id IS NULL; -- Minecraft: Pi Edition: Reborn (Client)
UPDATE apps SET flatpak_id = 'org.gnome.Mines' WHERE slug = 'org.gnome.Mines' AND flatpak_id IS NULL; -- Mines
UPDATE apps SET flatpak_id = 'io.github.sharkwouter.Minigalaxy' WHERE slug = 'io.github.sharkwouter.Minigalaxy' AND flatpak_id IS NULL; -- Minigalaxy
UPDATE apps SET flatpak_id = 'gg.minion.Minion' WHERE slug = 'gg.minion.Minion' AND flatpak_id IS NULL; -- Minion
UPDATE apps SET flatpak_id = 'org.kde.minuet' WHERE slug = 'org.kde.minuet' AND flatpak_id IS NULL; -- Minuet
UPDATE apps SET flatpak_id = 'eu.nokun.MirrorHall' WHERE slug = 'eu.nokun.MirrorHall' AND flatpak_id IS NULL; -- Mirror Hall
UPDATE apps SET flatpak_id = 'io.missioncenter.MissionCenter' WHERE slug = 'io.missioncenter.MissionCenter' AND flatpak_id IS NULL; -- Mission Center
UPDATE apps SET flatpak_id = 'org.mixxx.Mixxx' WHERE slug = 'org.mixxx.Mixxx' AND flatpak_id IS NULL; -- Mixxx
UPDATE apps SET flatpak_id = 'org.bunkus.mkvtoolnix-gui' WHERE slug = 'org.bunkus.mkvtoolnix-gui' AND flatpak_id IS NULL; -- MKVToolNix
UPDATE apps SET flatpak_id = 'org.moneymanagerex.MMEX' WHERE slug = 'org.moneymanagerex.MMEX' AND flatpak_id IS NULL; -- MMEX Money Manager
UPDATE apps SET flatpak_id = 'com.modrinth.ModrinthApp' WHERE slug = 'com.modrinth.ModrinthApp' AND flatpak_id IS NULL; -- Modrinth App
UPDATE apps SET flatpak_id = 'org.getmonero.Monero' WHERE slug = 'org.getmonero.Monero' AND flatpak_id IS NULL; -- Monero GUI
UPDATE apps SET flatpak_id = 'com.mongodb.Compass' WHERE slug = 'com.mongodb.Compass' AND flatpak_id IS NULL; -- MongoDB Compass
UPDATE apps SET flatpak_id = 'io.github.jorchube.monitorets' WHERE slug = 'io.github.jorchube.monitorets' AND flatpak_id IS NULL; -- Monitorets
UPDATE apps SET flatpak_id = 'com.moonlight_stream.Moonlight' WHERE slug = 'com.moonlight_stream.Moonlight' AND flatpak_id IS NULL; -- Moonlight
UPDATE apps SET flatpak_id = 'io.github.teacond.Morse' WHERE slug = 'io.github.teacond.Morse' AND flatpak_id IS NULL; -- Morse
UPDATE apps SET flatpak_id = 'net.agalwood.Motrix' WHERE slug = 'net.agalwood.Motrix' AND flatpak_id IS NULL; -- Motrix
UPDATE apps SET flatpak_id = 'io.github.seadve.Mousai' WHERE slug = 'io.github.seadve.Mousai' AND flatpak_id IS NULL; -- Mousai
UPDATE apps SET flatpak_id = 'io.github.amit9838.mousam' WHERE slug = 'io.github.amit9838.mousam' AND flatpak_id IS NULL; -- Mousam
UPDATE apps SET flatpak_id = 'org.mozilla.vpn' WHERE slug = 'org.mozilla.vpn' AND flatpak_id IS NULL; -- Mozilla VPN
UPDATE apps SET flatpak_id = 'io.github.mpc_qt.mpc-qt' WHERE slug = 'io.github.mpc_qt.mpc-qt' AND flatpak_id IS NULL; -- MPC-QT
UPDATE apps SET flatpak_id = 'io.mpv.Mpv' WHERE slug = 'io.mpv.Mpv' AND flatpak_id IS NULL; -- mpv
UPDATE apps SET flatpak_id = 'net.mullvad.MullvadBrowser' WHERE slug = 'net.mullvad.MullvadBrowser' AND flatpak_id IS NULL; -- Mullvad Browser
UPDATE apps SET flatpak_id = 'info.mumble.Mumble' WHERE slug = 'info.mumble.Mumble' AND flatpak_id IS NULL; -- Mumble
UPDATE apps SET flatpak_id = 'org.musescore.MuseScore' WHERE slug = 'org.musescore.MuseScore' AND flatpak_id IS NULL; -- MuseScore
UPDATE apps SET flatpak_id = 'org.gnome.Music' WHERE slug = 'org.gnome.Music' AND flatpak_id IS NULL; -- Music
UPDATE apps SET flatpak_id = 'org.musicbrainz.Picard' WHERE slug = 'org.musicbrainz.Picard' AND flatpak_id IS NULL; -- MusicBrainz Picard
UPDATE apps SET flatpak_id = 'net.fhannenheim.musicfetch' WHERE slug = 'net.fhannenheim.musicfetch' AND flatpak_id IS NULL; -- Musicfetch
UPDATE apps SET flatpak_id = 'org.feichtmeier.Musicpod' WHERE slug = 'org.feichtmeier.Musicpod' AND flatpak_id IS NULL; -- musicpod
UPDATE apps SET flatpak_id = 'org.mypaint.MyPaint' WHERE slug = 'org.mypaint.MyPaint' AND flatpak_id IS NULL; -- MyPaint
UPDATE apps SET flatpak_id = 'com.ntrack.n-track' WHERE slug = 'com.ntrack.n-track' AND flatpak_id IS NULL; -- n-Track Studio
UPDATE apps SET flatpak_id = 'fr.natron.Natron' WHERE slug = 'fr.natron.Natron' AND flatpak_id IS NULL; -- Natron
UPDATE apps SET flatpak_id = 'com.jaquadro.NBTExplorer' WHERE slug = 'com.jaquadro.NBTExplorer' AND flatpak_id IS NULL; -- NBTExplorer
UPDATE apps SET flatpak_id = 'io.github.hrkfdn.ncspot' WHERE slug = 'io.github.hrkfdn.ncspot' AND flatpak_id IS NULL; -- ncspot
UPDATE apps SET flatpak_id = 'org.kde.neochat' WHERE slug = 'org.kde.neochat' AND flatpak_id IS NULL; -- NeoChat
UPDATE apps SET flatpak_id = 'com.github.polymeilex.neothesia' WHERE slug = 'com.github.polymeilex.neothesia' AND flatpak_id IS NULL; -- Neothesia
UPDATE apps SET flatpak_id = 'io.neovim.nvim' WHERE slug = 'io.neovim.nvim' AND flatpak_id IS NULL; -- Neovim
UPDATE apps SET flatpak_id = 'ca._0ldsk00l.Nestopia' WHERE slug = 'ca._0ldsk00l.Nestopia' AND flatpak_id IS NULL; -- Nestopia
UPDATE apps SET flatpak_id = 'org.apache.netbeans' WHERE slug = 'org.apache.netbeans' AND flatpak_id IS NULL; -- NetBeans
UPDATE apps SET flatpak_id = 'io.github.zingytomato.netpeek' WHERE slug = 'io.github.zingytomato.netpeek' AND flatpak_id IS NULL; -- NetPeek
UPDATE apps SET flatpak_id = 'io.github.qwersyk.Newelle' WHERE slug = 'io.github.qwersyk.Newelle' AND flatpak_id IS NULL; -- Newelle
UPDATE apps SET flatpak_id = 'net.newpipe.NewPipe' WHERE slug = 'net.newpipe.NewPipe' AND flatpak_id IS NULL; -- NewPipe (unofficial port)
UPDATE apps SET flatpak_id = 'io.gitlab.news_flash.NewsFlash' WHERE slug = 'io.gitlab.news_flash.NewsFlash' AND flatpak_id IS NULL; -- Newsflash
UPDATE apps SET flatpak_id = 'com.nextcloud.desktopclient.nextcloud' WHERE slug = 'com.nextcloud.desktopclient.nextcloud' AND flatpak_id IS NULL; -- Nextcloud Desktop Client
UPDATE apps SET flatpak_id = 'im.nheko.Nheko' WHERE slug = 'im.nheko.Nheko' AND flatpak_id IS NULL; -- nheko
UPDATE apps SET flatpak_id = 'org.nicotine_plus.Nicotine' WHERE slug = 'org.nicotine_plus.Nicotine' AND flatpak_id IS NULL; -- Nicotine+
UPDATE apps SET flatpak_id = 'com.gitlab.adnan338.Nixwriter' WHERE slug = 'com.gitlab.adnan338.Nixwriter' AND flatpak_id IS NULL; -- Nixwriter
UPDATE apps SET flatpak_id = 'com.nomachine.nxplayer' WHERE slug = 'com.nomachine.nxplayer' AND flatpak_id IS NULL; -- NoMachine Enterprise Client
UPDATE apps SET flatpak_id = 'org.nomacs.ImageLounge' WHERE slug = 'org.nomacs.ImageLounge' AND flatpak_id IS NULL; -- nomacs - Image Lounge
UPDATE apps SET flatpak_id = 'camp.nook.nookdesktop' WHERE slug = 'camp.nook.nookdesktop' AND flatpak_id IS NULL; -- Nook Desktop
UPDATE apps SET flatpak_id = 'gg.norisk.NoRiskClientLauncherV3' WHERE slug = 'gg.norisk.NoRiskClientLauncherV3' AND flatpak_id IS NULL; -- NoRisk Client Launcher
UPDATE apps SET flatpak_id = 'com.github.dynobo.normcap' WHERE slug = 'com.github.dynobo.normcap' AND flatpak_id IS NULL; -- NormCap
UPDATE apps SET flatpak_id = 'im.bernard.Nostalgia' WHERE slug = 'im.bernard.Nostalgia' AND flatpak_id IS NULL; -- Nostalgia
UPDATE apps SET flatpak_id = 'com.github.dail8859.NotepadNext' WHERE slug = 'com.github.dail8859.NotepadNext' AND flatpak_id IS NULL; -- Notepad Next
UPDATE apps SET flatpak_id = 'com.notepadqq.Notepadqq' WHERE slug = 'com.notepadqq.Notepadqq' AND flatpak_id IS NULL; -- Notepadqq
UPDATE apps SET flatpak_id = 'org.gnome.Notes' WHERE slug = 'org.gnome.Notes' AND flatpak_id IS NULL; -- Notes
UPDATE apps SET flatpak_id = 'io.github.nuttyartist.notes' WHERE slug = 'io.github.nuttyartist.notes' AND flatpak_id IS NULL; -- Notes
UPDATE apps SET flatpak_id = 'com.notesnook.Notesnook' WHERE slug = 'com.notesnook.Notesnook' AND flatpak_id IS NULL; -- Notesnook
UPDATE apps SET flatpak_id = 'jp.nonbili.noutube' WHERE slug = 'jp.nonbili.noutube' AND flatpak_id IS NULL; -- NouTube
UPDATE apps SET flatpak_id = 'page.codeberg.lo_vely.Nucleus' WHERE slug = 'page.codeberg.lo_vely.Nucleus' AND flatpak_id IS NULL; -- Nucleus
UPDATE apps SET flatpak_id = 'io.github.congard.qnvsm' WHERE slug = 'io.github.congard.qnvsm' AND flatpak_id IS NULL; -- Nvidia System Monitor
UPDATE apps SET flatpak_id = 'net.nymtech.NymVPN' WHERE slug = 'net.nymtech.NymVPN' AND flatpak_id IS NULL; -- NymVPN
UPDATE apps SET flatpak_id = 'com.belmoussaoui.Obfuscate' WHERE slug = 'com.belmoussaoui.Obfuscate' AND flatpak_id IS NULL; -- Obfuscate
UPDATE apps SET flatpak_id = 'com.obsproject.Studio' WHERE slug = 'com.obsproject.Studio' AND flatpak_id IS NULL; -- OBS Studio
UPDATE apps SET flatpak_id = 'md.obsidian.Obsidian' WHERE slug = 'md.obsidian.Obsidian' AND flatpak_id IS NULL; -- Obsidian
UPDATE apps SET flatpak_id = 'org.gnome.OCRFeeder' WHERE slug = 'org.gnome.OCRFeeder' AND flatpak_id IS NULL; -- OCRFeeder
UPDATE apps SET flatpak_id = 'org.kde.okular' WHERE slug = 'org.kde.okular' AND flatpak_id IS NULL; -- Okular
UPDATE apps SET flatpak_id = 'org.olivevideoeditor.Olive' WHERE slug = 'org.olivevideoeditor.Olive' AND flatpak_id IS NULL; -- Olive
UPDATE apps SET flatpak_id = 'io.github.onionware_github.onionmedia' WHERE slug = 'io.github.onionware_github.onionmedia' AND flatpak_id IS NULL; -- OnionMedia X
UPDATE apps SET flatpak_id = 'org.onionshare.OnionShare' WHERE slug = 'org.onionshare.OnionShare' AND flatpak_id IS NULL; -- OnionShare
UPDATE apps SET flatpak_id = 'org.onlyoffice.desktopeditors' WHERE slug = 'org.onlyoffice.desktopeditors' AND flatpak_id IS NULL; -- ONLYOFFICE Desktop Editors
UPDATE apps SET flatpak_id = 'org.openandroidinstaller.OpenAndroidInstaller' WHERE slug = 'org.openandroidinstaller.OpenAndroidInstaller' AND flatpak_id IS NULL; -- OpenAndroidInstaller
UPDATE apps SET flatpak_id = 'ch.openboard.OpenBoard' WHERE slug = 'ch.openboard.OpenBoard' AND flatpak_id IS NULL; -- OpenBoard
UPDATE apps SET flatpak_id = 'app.opencomic.OpenComic' WHERE slug = 'app.opencomic.OpenComic' AND flatpak_id IS NULL; -- OpenComic
UPDATE apps SET flatpak_id = 'org.opencpn.OpenCPN' WHERE slug = 'org.opencpn.OpenCPN' AND flatpak_id IS NULL; -- OpenCPN
UPDATE apps SET flatpak_id = 'me.amankhanna.opendeck' WHERE slug = 'me.amankhanna.opendeck' AND flatpak_id IS NULL; -- OpenDeck
UPDATE apps SET flatpak_id = 'org.openmw.OpenMW' WHERE slug = 'org.openmw.OpenMW' AND flatpak_id IS NULL; -- OpenMW
UPDATE apps SET flatpak_id = 'net.openra.OpenRA' WHERE slug = 'net.openra.OpenRA' AND flatpak_id IS NULL; -- OpenRA
UPDATE apps SET flatpak_id = 'io.openrct2.OpenRCT2' WHERE slug = 'io.openrct2.OpenRCT2' AND flatpak_id IS NULL; -- OpenRCT2
UPDATE apps SET flatpak_id = 'org.openrgb.OpenRGB' WHERE slug = 'org.openrgb.OpenRGB' AND flatpak_id IS NULL; -- OpenRGB
UPDATE apps SET flatpak_id = 'org.openscad.OpenSCAD' WHERE slug = 'org.openscad.OpenSCAD' AND flatpak_id IS NULL; -- OpenSCAD
UPDATE apps SET flatpak_id = 'org.openshot.OpenShot' WHERE slug = 'org.openshot.OpenShot' AND flatpak_id IS NULL; -- OpenShot Video Editor
UPDATE apps SET flatpak_id = 'net.opentabletdriver.OpenTabletDriver' WHERE slug = 'net.opentabletdriver.OpenTabletDriver' AND flatpak_id IS NULL; -- OpenTabletDriver
UPDATE apps SET flatpak_id = 'io.github.OpenToonz' WHERE slug = 'io.github.OpenToonz' AND flatpak_id IS NULL; -- OpenToonz
UPDATE apps SET flatpak_id = 'org.openttd.OpenTTD' WHERE slug = 'org.openttd.OpenTTD' AND flatpak_id IS NULL; -- OpenTTD
UPDATE apps SET flatpak_id = 'com.opera.Opera' WHERE slug = 'com.opera.Opera' AND flatpak_id IS NULL; -- Opera
UPDATE apps SET flatpak_id = 'de.z_ray.OptimusUI' WHERE slug = 'de.z_ray.OptimusUI' AND flatpak_id IS NULL; -- OptimusUI
UPDATE apps SET flatpak_id = 'app.organicmaps.desktop' WHERE slug = 'app.organicmaps.desktop' AND flatpak_id IS NULL; -- Organic Maps
UPDATE apps SET flatpak_id = 'com.ktechpit.orion' WHERE slug = 'com.ktechpit.orion' AND flatpak_id IS NULL; -- Orion Torrent Client
UPDATE apps SET flatpak_id = 'sh.ppy.osu' WHERE slug = 'sh.ppy.osu' AND flatpak_id IS NULL; -- osu!
UPDATE apps SET flatpak_id = 'io.github.berarma.Oversteer' WHERE slug = 'io.github.berarma.Oversteer' AND flatpak_id IS NULL; -- Oversteer
UPDATE apps SET flatpak_id = 'io.github.nozwock.Packet' WHERE slug = 'io.github.nozwock.Packet' AND flatpak_id IS NULL; -- Packet
UPDATE apps SET flatpak_id = 'org.sugarlabs.Paint' WHERE slug = 'org.sugarlabs.Paint' AND flatpak_id IS NULL; -- Paint
UPDATE apps SET flatpak_id = 'io.github.pantheon_tweaks.pantheon-tweaks' WHERE slug = 'io.github.pantheon_tweaks.pantheon-tweaks' AND flatpak_id IS NULL; -- Pantheon Tweaks
UPDATE apps SET flatpak_id = 'io.github.diegoivan.pdf_metadata_editor' WHERE slug = 'io.github.diegoivan.pdf_metadata_editor' AND flatpak_id IS NULL; -- Paper Clip
UPDATE apps SET flatpak_id = 'work.openpaper.Paperwork' WHERE slug = 'work.openpaper.Paperwork' AND flatpak_id IS NULL; -- Paperwork
UPDATE apps SET flatpak_id = 'org.nickvision.tubeconverter' WHERE slug = 'org.nickvision.tubeconverter' AND flatpak_id IS NULL; -- Parabolic
UPDATE apps SET flatpak_id = 'ca.parallel_launcher.ParallelLauncher' WHERE slug = 'ca.parallel_launcher.ParallelLauncher' AND flatpak_id IS NULL; -- Parallel Launcher
UPDATE apps SET flatpak_id = 'com.parsecgaming.parsec' WHERE slug = 'com.parsecgaming.parsec' AND flatpak_id IS NULL; -- Parsec
UPDATE apps SET flatpak_id = 'org.gnome.seahorse.Application' WHERE slug = 'org.gnome.seahorse.Application' AND flatpak_id IS NULL; -- Passwords and Keys
UPDATE apps SET flatpak_id = 'community.pathofbuilding.PathOfBuilding' WHERE slug = 'community.pathofbuilding.PathOfBuilding' AND flatpak_id IS NULL; -- Path of Building
UPDATE apps SET flatpak_id = 'net.pcsx2.PCSX2' WHERE slug = 'net.pcsx2.PCSX2' AND flatpak_id IS NULL; -- PCSX2
UPDATE apps SET flatpak_id = 'com.github.jeromerobert.pdfarranger' WHERE slug = 'com.github.jeromerobert.pdfarranger' AND flatpak_id IS NULL; -- PDF Arranger
UPDATE apps SET flatpak_id = 'eu.scarpetta.PDFMixTool' WHERE slug = 'eu.scarpetta.PDFMixTool' AND flatpak_id IS NULL; -- PDF Mix Tool
UPDATE apps SET flatpak_id = 'com.github.muriloventuroso.pdftricks' WHERE slug = 'com.github.muriloventuroso.pdftricks' AND flatpak_id IS NULL; -- PDF Tricks
UPDATE apps SET flatpak_id = 'io.github.JakubMelka.Pdf4qt' WHERE slug = 'io.github.JakubMelka.Pdf4qt' AND flatpak_id IS NULL; -- PDF4QT
UPDATE apps SET flatpak_id = 'net.sourceforge.Pdfedit' WHERE slug = 'net.sourceforge.Pdfedit' AND flatpak_id IS NULL; -- PDFedit
UPDATE apps SET flatpak_id = 'io.github.peazip.PeaZip' WHERE slug = 'io.github.peazip.PeaZip' AND flatpak_id IS NULL; -- PeaZip
UPDATE apps SET flatpak_id = 'org.pencil2d.Pencil2D' WHERE slug = 'org.pencil2d.Pencil2D' AND flatpak_id IS NULL; -- Pencil2D
UPDATE apps SET flatpak_id = 'org.pgadmin.pgadmin4' WHERE slug = 'org.pgadmin.pgadmin4' AND flatpak_id IS NULL; -- pgAdmin 4
UPDATE apps SET flatpak_id = 'org.phoenicis.playonlinux' WHERE slug = 'org.phoenicis.playonlinux' AND flatpak_id IS NULL; -- Phoenicis PlayOnLinux
UPDATE apps SET flatpak_id = 'io.photoflare.photoflare' WHERE slug = 'io.photoflare.photoflare' AND flatpak_id IS NULL; -- Photoflare
UPDATE apps SET flatpak_id = 'org.photoqt.PhotoQt' WHERE slug = 'org.photoqt.PhotoQt' AND flatpak_id IS NULL; -- PhotoQt
UPDATE apps SET flatpak_id = 'org.kde.koko' WHERE slug = 'org.kde.koko' AND flatpak_id IS NULL; -- Photos
UPDATE apps SET flatpak_id = 'com.jetbrains.PhpStorm' WHERE slug = 'com.jetbrains.PhpStorm' AND flatpak_id IS NULL; -- PhpStorm
UPDATE apps SET flatpak_id = 'org.gnome.World.PikaBackup' WHERE slug = 'org.gnome.World.PikaBackup' AND flatpak_id IS NULL; -- Pika Backup
UPDATE apps SET flatpak_id = 'com.pikatorrent.PikaTorrent' WHERE slug = 'com.pikatorrent.PikaTorrent' AND flatpak_id IS NULL; -- PikaTorrent
UPDATE apps SET flatpak_id = 'com.github.ryonakano.pinit' WHERE slug = 'com.github.ryonakano.pinit' AND flatpak_id IS NULL; -- Pin It!
UPDATE apps SET flatpak_id = 'io.github.fabrialberio.pinapp' WHERE slug = 'io.github.fabrialberio.pinapp' AND flatpak_id IS NULL; -- Pins
UPDATE apps SET flatpak_id = 'com.github.PintaProject.Pinta' WHERE slug = 'com.github.PintaProject.Pinta' AND flatpak_id IS NULL; -- Pinta
UPDATE apps SET flatpak_id = 'de.schmidhuberj.tubefeeder' WHERE slug = 'de.schmidhuberj.tubefeeder' AND flatpak_id IS NULL; -- Pipeline
UPDATE apps SET flatpak_id = 'org.freedesktop.Piper' WHERE slug = 'org.freedesktop.Piper' AND flatpak_id IS NULL; -- Piper
UPDATE apps SET flatpak_id = 'org.pitivi.Pitivi' WHERE slug = 'org.pitivi.Pitivi' AND flatpak_id IS NULL; -- Pitivi
UPDATE apps SET flatpak_id = 'com.orama_interactive.Pixelorama' WHERE slug = 'com.orama_interactive.Pixelorama' AND flatpak_id IS NULL; -- Pixelorama
UPDATE apps SET flatpak_id = 'io.github.alainm23.planify' WHERE slug = 'io.github.alainm23.planify' AND flatpak_id IS NULL; -- Planify
UPDATE apps SET flatpak_id = 'org.kde.plasmatube' WHERE slug = 'org.kde.plasmatube' AND flatpak_id IS NULL; -- PlasmaTube
UPDATE apps SET flatpak_id = 'io.github.efogdev.mpris-timer' WHERE slug = 'io.github.efogdev.mpris-timer' AND flatpak_id IS NULL; -- Play Timer
UPDATE apps SET flatpak_id = 'com.playonlinux.PlayOnLinux4' WHERE slug = 'com.playonlinux.PlayOnLinux4' AND flatpak_id IS NULL; -- PlayOnLinux 4
UPDATE apps SET flatpak_id = 'tv.plex.PlexDesktop' WHERE slug = 'tv.plex.PlexDesktop' AND flatpak_id IS NULL; -- Plex
UPDATE apps SET flatpak_id = 'tv.plex.PlexHTPC' WHERE slug = 'tv.plex.PlexHTPC' AND flatpak_id IS NULL; -- Plex HTPC
UPDATE apps SET flatpak_id = 'com.plexamp.Plexamp' WHERE slug = 'com.plexamp.Plexamp' AND flatpak_id IS NULL; -- Plexamp
UPDATE apps SET flatpak_id = 'org.gnome.Podcasts' WHERE slug = 'org.gnome.Podcasts' AND flatpak_id IS NULL; -- Podcasts
UPDATE apps SET flatpak_id = 'io.podman_desktop.PodmanDesktop' WHERE slug = 'io.podman_desktop.PodmanDesktop' AND flatpak_id IS NULL; -- Podman Desktop
UPDATE apps SET flatpak_id = 'com.github.marhkb.Pods' WHERE slug = 'com.github.marhkb.Pods' AND flatpak_id IS NULL; -- Pods
UPDATE apps SET flatpak_id = 'com.pokemmo.PokeMMO' WHERE slug = 'com.pokemmo.PokeMMO' AND flatpak_id IS NULL; -- PokeMMO
UPDATE apps SET flatpak_id = 'app.polychromatic.controller' WHERE slug = 'app.polychromatic.controller' AND flatpak_id IS NULL; -- Polychromatic
UPDATE apps SET flatpak_id = 'org.polymc.PolyMC' WHERE slug = 'org.polymc.PolyMC' AND flatpak_id IS NULL; -- PolyMC
UPDATE apps SET flatpak_id = 'org.jousse.vincent.Pomodorolm' WHERE slug = 'org.jousse.vincent.Pomodorolm' AND flatpak_id IS NULL; -- pomodorolm
UPDATE apps SET flatpak_id = 'com.system76.Popsicle' WHERE slug = 'com.system76.Popsicle' AND flatpak_id IS NULL; -- Popsicle
UPDATE apps SET flatpak_id = 'com.github.IsmaelMartinez.teams_for_linux' WHERE slug = 'com.github.IsmaelMartinez.teams_for_linux' AND flatpak_id IS NULL; -- Portal for Teams
UPDATE apps SET flatpak_id = 'info.portfolio_performance.PortfolioPerformance' WHERE slug = 'info.portfolio_performance.PortfolioPerformance' AND flatpak_id IS NULL; -- Portfolio Performance
UPDATE apps SET flatpak_id = 'ru.linux_gaming.PortProton' WHERE slug = 'ru.linux_gaming.PortProton' AND flatpak_id IS NULL; -- PortProton
UPDATE apps SET flatpak_id = 'com.getpostman.Postman' WHERE slug = 'com.getpostman.Postman' AND flatpak_id IS NULL; -- Postman
UPDATE apps SET flatpak_id = 'com.poweriso.PowerISO' WHERE slug = 'com.poweriso.PowerISO' AND flatpak_id IS NULL; -- PowerISO
UPDATE apps SET flatpak_id = 'org.ppsspp.PPSSPP' WHERE slug = 'org.ppsspp.PPSSPP' AND flatpak_id IS NULL; -- PPSSPP
UPDATE apps SET flatpak_id = 'io.github.shiiion.primehack' WHERE slug = 'io.github.shiiion.primehack' AND flatpak_id IS NULL; -- PrimeHack
UPDATE apps SET flatpak_id = 'org.prismlauncher.PrismLauncher' WHERE slug = 'org.prismlauncher.PrismLauncher' AND flatpak_id IS NULL; -- Prism Launcher
UPDATE apps SET flatpak_id = 'me.proton.Mail' WHERE slug = 'me.proton.Mail' AND flatpak_id IS NULL; -- Proton Mail
UPDATE apps SET flatpak_id = 'ch.protonmail.protonmail-bridge' WHERE slug = 'ch.protonmail.protonmail-bridge' AND flatpak_id IS NULL; -- Proton Mail Bridge
UPDATE apps SET flatpak_id = 'me.proton.Pass' WHERE slug = 'me.proton.Pass' AND flatpak_id IS NULL; -- Proton Pass
UPDATE apps SET flatpak_id = 'com.protonvpn.www' WHERE slug = 'com.protonvpn.www' AND flatpak_id IS NULL; -- Proton VPN
UPDATE apps SET flatpak_id = 'com.vysp3r.ProtonPlus' WHERE slug = 'com.vysp3r.ProtonPlus' AND flatpak_id IS NULL; -- ProtonPlus
UPDATE apps SET flatpak_id = 'com.github.Matoking.protontricks' WHERE slug = 'com.github.Matoking.protontricks' AND flatpak_id IS NULL; -- Protontricks
UPDATE apps SET flatpak_id = 'net.davidotek.pupgui2' WHERE slug = 'net.davidotek.pupgui2' AND flatpak_id IS NULL; -- ProtonUp-Qt
UPDATE apps SET flatpak_id = 'com.prusa3d.PrusaSlicer' WHERE slug = 'com.prusa3d.PrusaSlicer' AND flatpak_id IS NULL; -- PrusaSlicer
UPDATE apps SET flatpak_id = 'io.github.prateekmedia.pstube' WHERE slug = 'io.github.prateekmedia.pstube' AND flatpak_id IS NULL; -- PsTube
UPDATE apps SET flatpak_id = 'app.devsuite.Ptyxis' WHERE slug = 'app.devsuite.Ptyxis' AND flatpak_id IS NULL; -- Ptyxis
UPDATE apps SET flatpak_id = 'net.puddletag.puddletag' WHERE slug = 'net.puddletag.puddletag' AND flatpak_id IS NULL; -- Puddletag
UPDATE apps SET flatpak_id = 'dev.pulsar_edit.Pulsar' WHERE slug = 'dev.pulsar_edit.Pulsar' AND flatpak_id IS NULL; -- Pulsar
UPDATE apps SET flatpak_id = 'com.github.wwmm.pulseeffects' WHERE slug = 'com.github.wwmm.pulseeffects' AND flatpak_id IS NULL; -- PulseEffects
UPDATE apps SET flatpak_id = 'uk.org.greenend.chiark.sgtatham.putty' WHERE slug = 'uk.org.greenend.chiark.sgtatham.putty' AND flatpak_id IS NULL; -- PuTTY
UPDATE apps SET flatpak_id = 'com.saivert.pwvucontrol' WHERE slug = 'com.saivert.pwvucontrol' AND flatpak_id IS NULL; -- pwvucontrol
UPDATE apps SET flatpak_id = 'com.jetbrains.PyCharm-Professional' WHERE slug = 'com.jetbrains.PyCharm-Professional' AND flatpak_id IS NULL; -- PyCharm-Professional
UPDATE apps SET flatpak_id = 'io.sourceforge.pysolfc.PySolFC' WHERE slug = 'io.sourceforge.pysolfc.PySolFC' AND flatpak_id IS NULL; -- PySolFC
UPDATE apps SET flatpak_id = 'ua.org.brezblock.q4wine' WHERE slug = 'ua.org.brezblock.q4wine' AND flatpak_id IS NULL; -- q4wine
UPDATE apps SET flatpak_id = 'io.github.Qalculate' WHERE slug = 'io.github.Qalculate' AND flatpak_id IS NULL; -- Qalculate! (GTK UI)
UPDATE apps SET flatpak_id = 'io.github.Qalculate.qalculate-qt' WHERE slug = 'io.github.Qalculate.qalculate-qt' AND flatpak_id IS NULL; -- Qalculate! (Qt UI)
UPDATE apps SET flatpak_id = 'org.qbittorrent.qBittorrent' WHERE slug = 'org.qbittorrent.qBittorrent' AND flatpak_id IS NULL; -- qBittorrent
UPDATE apps SET flatpak_id = 'io.github.shundhammer.qdirstat' WHERE slug = 'io.github.shundhammer.qdirstat' AND flatpak_id IS NULL; -- QDirStat
UPDATE apps SET flatpak_id = 'org.qgis.qgis' WHERE slug = 'org.qgis.qgis' AND flatpak_id IS NULL; -- QGIS Desktop
UPDATE apps SET flatpak_id = 'org.qownnotes.QOwnNotes' WHERE slug = 'org.qownnotes.QOwnNotes' AND flatpak_id IS NULL; -- QOwnNotes
UPDATE apps SET flatpak_id = 'br.eng.silas.qpdftools' WHERE slug = 'br.eng.silas.qpdftools' AND flatpak_id IS NULL; -- Qpdf Tools
UPDATE apps SET flatpak_id = 'org.rncbc.qpwgraph' WHERE slug = 'org.rncbc.qpwgraph' AND flatpak_id IS NULL; -- qpwgraph
UPDATE apps SET flatpak_id = 'dev.lasheen.qr' WHERE slug = 'dev.lasheen.qr' AND flatpak_id IS NULL; -- QR Scanner
UPDATE apps SET flatpak_id = 'io.qt.QtCreator' WHERE slug = 'io.qt.QtCreator' AND flatpak_id IS NULL; -- Qt Creator
UPDATE apps SET flatpak_id = 'org.gnome.Quadrapassel' WHERE slug = 'org.gnome.Quadrapassel' AND flatpak_id IS NULL; -- Quadrapassel
UPDATE apps SET flatpak_id = 'io.github.quodlibet.QuodLibet' WHERE slug = 'io.github.quodlibet.QuodLibet' AND flatpak_id IS NULL; -- Quod Libet
UPDATE apps SET flatpak_id = 'com.interversehq.qView' WHERE slug = 'com.interversehq.qView' AND flatpak_id IS NULL; -- qView
UPDATE apps SET flatpak_id = 'de.schmidhuberj.DieBahn' WHERE slug = 'de.schmidhuberj.DieBahn' AND flatpak_id IS NULL; -- Railway
UPDATE apps SET flatpak_id = 'io.github.CyberTimon.RapidRAW' WHERE slug = 'io.github.CyberTimon.RapidRAW' AND flatpak_id IS NULL; -- RapidRAW
UPDATE apps SET flatpak_id = 'org.raspberrypi.rpi-imager' WHERE slug = 'org.raspberrypi.rpi-imager' AND flatpak_id IS NULL; -- Raspberry Pi Imager
UPDATE apps SET flatpak_id = 'com.rawtherapee.RawTherapee' WHERE slug = 'com.rawtherapee.RawTherapee' AND flatpak_id IS NULL; -- RawTherapee
UPDATE apps SET flatpak_id = 'xyz.z3ntu.razergenie' WHERE slug = 'xyz.z3ntu.razergenie' AND flatpak_id IS NULL; -- RazerGenie
UPDATE apps SET flatpak_id = 'io.github.zarestia_dev.rclone-manager' WHERE slug = 'io.github.zarestia_dev.rclone-manager' AND flatpak_id IS NULL; -- RClone Manager
UPDATE apps SET flatpak_id = 'io.github.pieterdd.RcloneShuttle' WHERE slug = 'io.github.pieterdd.RcloneShuttle' AND flatpak_id IS NULL; -- Rclone Shuttle
UPDATE apps SET flatpak_id = 'com.rcloneui.RcloneUI' WHERE slug = 'com.rcloneui.RcloneUI' AND flatpak_id IS NULL; -- Rclone UI
UPDATE apps SET flatpak_id = 'com.bilingify.readest' WHERE slug = 'com.bilingify.readest' AND flatpak_id IS NULL; -- Readest
UPDATE apps SET flatpak_id = 'io.github.tntwise.REAL-Video-Enhancer' WHERE slug = 'io.github.tntwise.REAL-Video-Enhancer' AND flatpak_id IS NULL; -- REAL Video Enhancer
UPDATE apps SET flatpak_id = 'fm.reaper.Reaper' WHERE slug = 'fm.reaper.Reaper' AND flatpak_id IS NULL; -- Reaper
UPDATE apps SET flatpak_id = 'com.github.ryonakano.reco' WHERE slug = 'com.github.ryonakano.reco' AND flatpak_id IS NULL; -- Reco
UPDATE apps SET flatpak_id = 'ca.edestcroix.Recordbox' WHERE slug = 'ca.edestcroix.Recordbox' AND flatpak_id IS NULL; -- Recordbox
UPDATE apps SET flatpak_id = 'com.redis.RedisInsight' WHERE slug = 'com.redis.RedisInsight' AND flatpak_id IS NULL; -- Redis Insight
UPDATE apps SET flatpak_id = 'page.tesk.Refine' WHERE slug = 'page.tesk.Refine' AND flatpak_id IS NULL; -- Refine
UPDATE apps SET flatpak_id = 'dev.ibrahimcetin.reins' WHERE slug = 'dev.ibrahimcetin.reins' AND flatpak_id IS NULL; -- Reins: Chat for Ollama
UPDATE apps SET flatpak_id = 'org.remmina.Remmina' WHERE slug = 'org.remmina.Remmina' AND flatpak_id IS NULL; -- Remmina
UPDATE apps SET flatpak_id = 'net.nokyan.Resources' WHERE slug = 'net.nokyan.Resources' AND flatpak_id IS NULL; -- Resources
UPDATE apps SET flatpak_id = 'org.libretro.RetroArch' WHERE slug = 'org.libretro.RetroArch' AND flatpak_id IS NULL; -- RetroArch
UPDATE apps SET flatpak_id = 'net.retrodeck.retrodeck' WHERE slug = 'net.retrodeck.retrodeck' AND flatpak_id IS NULL; -- RetroDECK
UPDATE apps SET flatpak_id = 'chat.revolt.RevoltDesktop' WHERE slug = 'chat.revolt.RevoltDesktop' AND flatpak_id IS NULL; -- Revolt
UPDATE apps SET flatpak_id = 'io.github.swordpuffin.rewaita' WHERE slug = 'io.github.swordpuffin.rewaita' AND flatpak_id IS NULL; -- Rewaita
UPDATE apps SET flatpak_id = 'org.gnome.Rhythmbox3' WHERE slug = 'org.gnome.Rhythmbox3' AND flatpak_id IS NULL; -- Rhythmbox
UPDATE apps SET flatpak_id = 'com.jetbrains.Rider' WHERE slug = 'com.jetbrains.Rider' AND flatpak_id IS NULL; -- Rider
UPDATE apps SET flatpak_id = 'dev.diegovsky.Riff' WHERE slug = 'dev.diegovsky.Riff' AND flatpak_id IS NULL; -- Riff
UPDATE apps SET flatpak_id = 'com.github.flxzt.rnote' WHERE slug = 'com.github.flxzt.rnote' AND flatpak_id IS NULL; -- Rnote
UPDATE apps SET flatpak_id = 'chat.rocket.RocketChat' WHERE slug = 'chat.rocket.RocketChat' AND flatpak_id IS NULL; -- Rocket.Chat
UPDATE apps SET flatpak_id = 'com.github.Rosalie241.RMG' WHERE slug = 'com.github.Rosalie241.RMG' AND flatpak_id IS NULL; -- Rosalie's Mupen GUI
UPDATE apps SET flatpak_id = 'net.rpcs3.RPCS3' WHERE slug = 'net.rpcs3.RPCS3' AND flatpak_id IS NULL; -- RPCS3
UPDATE apps SET flatpak_id = 'io.github.martinrotter.rssguard' WHERE slug = 'io.github.martinrotter.rssguard' AND flatpak_id IS NULL; -- RSS Guard
UPDATE apps SET flatpak_id = 'rs.ruffle.Ruffle' WHERE slug = 'rs.ruffle.Ruffle' AND flatpak_id IS NULL; -- Ruffle
UPDATE apps SET flatpak_id = 'net.runelite.RuneLite' WHERE slug = 'net.runelite.RuneLite' AND flatpak_id IS NULL; -- RuneLite
UPDATE apps SET flatpak_id = 'com.jagex.RuneScape' WHERE slug = 'com.jagex.RuneScape' AND flatpak_id IS NULL; -- RuneScape
UPDATE apps SET flatpak_id = 'io.github.totoshko88.RustConn' WHERE slug = 'io.github.totoshko88.RustConn' AND flatpak_id IS NULL; -- RustConn
UPDATE apps SET flatpak_id = 'com.rustdesk.RustDesk' WHERE slug = 'com.rustdesk.RustDesk' AND flatpak_id IS NULL; -- RustDesk
UPDATE apps SET flatpak_id = 'com.jetbrains.RustRover' WHERE slug = 'com.jetbrains.RustRover' AND flatpak_id IS NULL; -- RustRover
UPDATE apps SET flatpak_id = 'io.github.ryubing.Ryujinx' WHERE slug = 'io.github.ryubing.Ryujinx' AND flatpak_id IS NULL; -- Ryujinx (Ryubing)
UPDATE apps SET flatpak_id = 'io.kapsa.drive' WHERE slug = 'io.kapsa.drive' AND flatpak_id IS NULL; -- S3Drive
UPDATE apps SET flatpak_id = 'com.adilhanney.saber' WHERE slug = 'com.adilhanney.saber' AND flatpak_id IS NULL; -- Saber
UPDATE apps SET flatpak_id = 'org.sabnzbd.sabnzbd' WHERE slug = 'org.sabnzbd.sabnzbd' AND flatpak_id IS NULL; -- SABnzbd
UPDATE apps SET flatpak_id = 'io.github.vikdevelop.SaveDesktop' WHERE slug = 'io.github.vikdevelop.SaveDesktop' AND flatpak_id IS NULL; -- Save Desktop
UPDATE apps SET flatpak_id = 'com.sayonara_player.Sayonara' WHERE slug = 'com.sayonara_player.Sayonara' AND flatpak_id IS NULL; -- Sayonara
UPDATE apps SET flatpak_id = 'com.github.unrud.djpdf' WHERE slug = 'com.github.unrud.djpdf' AND flatpak_id IS NULL; -- Scans to PDF
UPDATE apps SET flatpak_id = 'io.github.rfrench3.scopebuddy-gui' WHERE slug = 'io.github.rfrench3.scopebuddy-gui' AND flatpak_id IS NULL; -- Scopebuddy GUI
UPDATE apps SET flatpak_id = 'io.github.tobagin.scramble' WHERE slug = 'io.github.tobagin.scramble' AND flatpak_id IS NULL; -- Scramble
UPDATE apps SET flatpak_id = 'edu.mit.Scratch' WHERE slug = 'edu.mit.Scratch' AND flatpak_id IS NULL; -- Scratch
UPDATE apps SET flatpak_id = 'org.adishatz.Screenshot' WHERE slug = 'org.adishatz.Screenshot' AND flatpak_id IS NULL; -- Screenshot
UPDATE apps SET flatpak_id = 'net.scribus.Scribus' WHERE slug = 'net.scribus.Scribus' AND flatpak_id IS NULL; -- Scribus
UPDATE apps SET flatpak_id = 'org.scummvm.ScummVM' WHERE slug = 'org.scummvm.ScummVM' AND flatpak_id IS NULL; -- ScummVM
UPDATE apps SET flatpak_id = 'org.gnome.World.Secrets' WHERE slug = 'org.gnome.World.Secrets' AND flatpak_id IS NULL; -- Secrets
UPDATE apps SET flatpak_id = 'com.sejda.Sejda' WHERE slug = 'com.sejda.Sejda' AND flatpak_id IS NULL; -- Sejda PDF Desktop
UPDATE apps SET flatpak_id = 'network.loki.Session' WHERE slug = 'network.loki.Session' AND flatpak_id IS NULL; -- Session Desktop
UPDATE apps SET flatpak_id = 'com.pojtinger.felicitas.Sessions' WHERE slug = 'com.pojtinger.felicitas.Sessions' AND flatpak_id IS NULL; -- Sessions
UPDATE apps SET flatpak_id = 'com.steamgriddb.SGDBoop' WHERE slug = 'com.steamgriddb.SGDBoop' AND flatpak_id IS NULL; -- SGDBoop
UPDATE apps SET flatpak_id = 'net.shadps4.shadPS4' WHERE slug = 'net.shadps4.shadPS4' AND flatpak_id IS NULL; -- shadPS4
UPDATE apps SET flatpak_id = 'com.shatteredpixel.shatteredpixeldungeon' WHERE slug = 'com.shatteredpixel.shatteredpixeldungeon' AND flatpak_id IS NULL; -- Shattered Pixel Dungeon
UPDATE apps SET flatpak_id = 'de.haeckerfelix.Shortwave' WHERE slug = 'de.haeckerfelix.Shortwave' AND flatpak_id IS NULL; -- Shortwave
UPDATE apps SET flatpak_id = 'org.shotcut.Shotcut' WHERE slug = 'org.shotcut.Shotcut' AND flatpak_id IS NULL; -- Shotcut
UPDATE apps SET flatpak_id = 'org.gnome.Shotwell' WHERE slug = 'org.gnome.Shotwell' AND flatpak_id IS NULL; -- Shotwell
UPDATE apps SET flatpak_id = 'org.signal.Signal' WHERE slug = 'org.signal.Signal' AND flatpak_id IS NULL; -- Signal Desktop
UPDATE apps SET flatpak_id = 'io.github.dyegoaurelio.simple-wireplumber-gui' WHERE slug = 'io.github.dyegoaurelio.simple-wireplumber-gui' AND flatpak_id IS NULL; -- Simple Wireplumber GUI
UPDATE apps SET flatpak_id = 'com.simplenote.Simplenote' WHERE slug = 'com.simplenote.Simplenote' AND flatpak_id IS NULL; -- Simplenote
UPDATE apps SET flatpak_id = 'chat.simplex.simplex' WHERE slug = 'chat.simplex.simplex' AND flatpak_id IS NULL; -- SimpleX Chat
UPDATE apps SET flatpak_id = 'com.simulide.simulide' WHERE slug = 'com.simulide.simulide' AND flatpak_id IS NULL; -- SimulIDE
UPDATE apps SET flatpak_id = 'org.siril.Siril' WHERE slug = 'org.siril.Siril' AND flatpak_id IS NULL; -- Siril
UPDATE apps SET flatpak_id = 'io.github.sitraorg.sitra' WHERE slug = 'io.github.sitraorg.sitra' AND flatpak_id IS NULL; -- Sitra
UPDATE apps SET flatpak_id = 'org.kde.skanlite' WHERE slug = 'org.kde.skanlite' AND flatpak_id IS NULL; -- Skanlite
UPDATE apps SET flatpak_id = 'org.kde.skanpage' WHERE slug = 'org.kde.skanpage' AND flatpak_id IS NULL; -- Skanpage
UPDATE apps SET flatpak_id = 'com.slack.Slack' WHERE slug = 'com.slack.Slack' AND flatpak_id IS NULL; -- Slack
UPDATE apps SET flatpak_id = 'moe.launcher.sleepy-launcher' WHERE slug = 'moe.launcher.sleepy-launcher' AND flatpak_id IS NULL; -- Sleepy Launcher
UPDATE apps SET flatpak_id = 'it.mijorus.smile' WHERE slug = 'it.mijorus.smile' AND flatpak_id IS NULL; -- Smile
UPDATE apps SET flatpak_id = 'info.smplayer.SMPlayer' WHERE slug = 'info.smplayer.SMPlayer' AND flatpak_id IS NULL; -- SMPlayer
UPDATE apps SET flatpak_id = 'com.snes9x.Snes9x' WHERE slug = 'com.snes9x.Snes9x' AND flatpak_id IS NULL; -- Snes9x
UPDATE apps SET flatpak_id = 'org.vinegarhq.Sober' WHERE slug = 'org.vinegarhq.Sober' AND flatpak_id IS NULL; -- Sober
UPDATE apps SET flatpak_id = 'io.github.pwr_solaar.solaar' WHERE slug = 'io.github.pwr_solaar.solaar' AND flatpak_id IS NULL; -- Solaar
UPDATE apps SET flatpak_id = 'org.gnome.Solanum' WHERE slug = 'org.gnome.Solanum' AND flatpak_id IS NULL; -- Solanum
UPDATE apps SET flatpak_id = 're.fossplant.songrec' WHERE slug = 're.fossplant.songrec' AND flatpak_id IS NULL; -- SongRec
UPDATE apps SET flatpak_id = 'org.sonic3air.Sonic3AIR' WHERE slug = 'org.sonic3air.Sonic3AIR' AND flatpak_id IS NULL; -- Sonic 3: A.I.R
UPDATE apps SET flatpak_id = 'org.srb2.SRB2' WHERE slug = 'org.srb2.SRB2' AND flatpak_id IS NULL; -- Sonic Robo Blast 2
UPDATE apps SET flatpak_id = 'org.gnome.SoundRecorder' WHERE slug = 'org.gnome.SoundRecorder' AND flatpak_id IS NULL; -- Sound Recorder
UPDATE apps SET flatpak_id = 'org.soundconverter.SoundConverter' WHERE slug = 'org.soundconverter.SoundConverter' AND flatpak_id IS NULL; -- SoundConverter
UPDATE apps SET flatpak_id = 'io.github.Soundux' WHERE slug = 'io.github.Soundux' AND flatpak_id IS NULL; -- Soundux
UPDATE apps SET flatpak_id = 'com.github.k4zmu2a.spacecadetpinball' WHERE slug = 'com.github.k4zmu2a.spacecadetpinball' AND flatpak_id IS NULL; -- Space Cadet Pinball
UPDATE apps SET flatpak_id = 'com.github.Darazaki.Spedread' WHERE slug = 'com.github.Darazaki.Spedread' AND flatpak_id IS NULL; -- Spedread
UPDATE apps SET flatpak_id = 'net.mkiol.SpeechNote' WHERE slug = 'net.mkiol.SpeechNote' AND flatpak_id IS NULL; -- Speech Note
UPDATE apps SET flatpak_id = 'xyz.ketok.Speedtest' WHERE slug = 'xyz.ketok.Speedtest' AND flatpak_id IS NULL; -- Speedtest
UPDATE apps SET flatpak_id = 'io.github.zaedus.spider' WHERE slug = 'io.github.zaedus.spider' AND flatpak_id IS NULL; -- Spider
UPDATE apps SET flatpak_id = 'com.spotify.Client' WHERE slug = 'com.spotify.Client' AND flatpak_id IS NULL; -- Spotify
UPDATE apps SET flatpak_id = 'com.github.KRTirtho.Spotube' WHERE slug = 'com.github.KRTirtho.Spotube' AND flatpak_id IS NULL; -- Spotube
UPDATE apps SET flatpak_id = 'io.github.shonubot.Spruce' WHERE slug = 'io.github.shonubot.Spruce' AND flatpak_id IS NULL; -- Spruce
UPDATE apps SET flatpak_id = 'org.spyder_ide.spyder' WHERE slug = 'org.spyder_ide.spyder' AND flatpak_id IS NULL; -- Spyder
UPDATE apps SET flatpak_id = 'io.github.mfat.sshpilot' WHERE slug = 'io.github.mfat.sshpilot' AND flatpak_id IS NULL; -- SSH Pilot
UPDATE apps SET flatpak_id = 'org.standardnotes.standardnotes' WHERE slug = 'org.standardnotes.standardnotes' AND flatpak_id IS NULL; -- Standard Notes
UPDATE apps SET flatpak_id = 'best.ellie.StartupConfiguration' WHERE slug = 'best.ellie.StartupConfiguration' AND flatpak_id IS NULL; -- Startup Configuration
UPDATE apps SET flatpak_id = 'com.valvesoftware.Steam' WHERE slug = 'com.valvesoftware.Steam' AND flatpak_id IS NULL; -- Steam
UPDATE apps SET flatpak_id = 'com.valvesoftware.SteamLink' WHERE slug = 'com.valvesoftware.SteamLink' AND flatpak_id IS NULL; -- Steam Link
UPDATE apps SET flatpak_id = 'com.steamgriddb.steam-rom-manager' WHERE slug = 'com.steamgriddb.steam-rom-manager' AND flatpak_id IS NULL; -- Steam ROM Manager
UPDATE apps SET flatpak_id = 'org.stellarium.Stellarium' WHERE slug = 'org.stellarium.Stellarium' AND flatpak_id IS NULL; -- Stellarium
UPDATE apps SET flatpak_id = 'com.vixalien.sticky' WHERE slug = 'com.vixalien.sticky' AND flatpak_id IS NULL; -- Sticky Notes
UPDATE apps SET flatpak_id = 'io.github.sigmasd.stimulator' WHERE slug = 'io.github.sigmasd.stimulator' AND flatpak_id IS NULL; -- Stimulator
UPDATE apps SET flatpak_id = 'org.strawberrymusicplayer.strawberry' WHERE slug = 'org.strawberrymusicplayer.strawberry' AND flatpak_id IS NULL; -- Strawberry Music Player
UPDATE apps SET flatpak_id = 'com.core447.StreamController' WHERE slug = 'com.core447.StreamController' AND flatpak_id IS NULL; -- StreamController
UPDATE apps SET flatpak_id = 'com.stremio.Stremio' WHERE slug = 'com.stremio.Stremio' AND flatpak_id IS NULL; -- Stremio
UPDATE apps SET flatpak_id = 'com.stremio.Service' WHERE slug = 'com.stremio.Service' AND flatpak_id IS NULL; -- Stremio Service
UPDATE apps SET flatpak_id = 'com.sublimehq.SublimeText' WHERE slug = 'com.sublimehq.SublimeText' AND flatpak_id IS NULL; -- Sublime Text
UPDATE apps SET flatpak_id = 'org.kde.subtitlecomposer' WHERE slug = 'org.kde.subtitlecomposer' AND flatpak_id IS NULL; -- Subtitle Composer
UPDATE apps SET flatpak_id = 'io.github.sepehr_rs.Sudoku' WHERE slug = 'io.github.sepehr_rs.Sudoku' AND flatpak_id IS NULL; -- Sudoku
UPDATE apps SET flatpak_id = 'dev.lizardbyte.app.Sunshine' WHERE slug = 'dev.lizardbyte.app.Sunshine' AND flatpak_id IS NULL; -- Sunshine
UPDATE apps SET flatpak_id = 'com.super_productivity.SuperProductivity' WHERE slug = 'com.super_productivity.SuperProductivity' AND flatpak_id IS NULL; -- Super Productivity
UPDATE apps SET flatpak_id = 'com.supermodel3.Supermodel' WHERE slug = 'com.supermodel3.Supermodel' AND flatpak_id IS NULL; -- Supermodel
UPDATE apps SET flatpak_id = 'io.github.dweymouth.supersonic' WHERE slug = 'io.github.dweymouth.supersonic' AND flatpak_id IS NULL; -- Supersonic
UPDATE apps SET flatpak_id = 'org.supertuxproject.SuperTux' WHERE slug = 'org.supertuxproject.SuperTux' AND flatpak_id IS NULL; -- SuperTux
UPDATE apps SET flatpak_id = 'net.supertuxkart.SuperTuxKart' WHERE slug = 'net.supertuxkart.SuperTuxKart' AND flatpak_id IS NULL; -- SuperTuxKart
UPDATE apps SET flatpak_id = 'com.surfshark.Surfshark' WHERE slug = 'com.surfshark.Surfshark' AND flatpak_id IS NULL; -- Surfshark
UPDATE apps SET flatpak_id = 'org.opensurge2d.OpenSurge' WHERE slug = 'org.opensurge2d.OpenSurge' AND flatpak_id IS NULL; -- Surge Engine
UPDATE apps SET flatpak_id = 'com.sweethome3d.Sweethome3d' WHERE slug = 'com.sweethome3d.Sweethome3d' AND flatpak_id IS NULL; -- Sweet Home 3D
UPDATE apps SET flatpak_id = 'io.gitlab.adhami3310.Converter' WHERE slug = 'io.gitlab.adhami3310.Converter' AND flatpak_id IS NULL; -- Switcheroo
UPDATE apps SET flatpak_id = 'me.kozec.syncthingtk' WHERE slug = 'me.kozec.syncthingtk' AND flatpak_id IS NULL; -- Syncthing GTK
UPDATE apps SET flatpak_id = 'io.github.martchus.syncthingtray' WHERE slug = 'io.github.martchus.syncthingtray' AND flatpak_id IS NULL; -- Syncthing Tray
UPDATE apps SET flatpak_id = 'com.github.zocker_160.SyncThingy' WHERE slug = 'com.github.zocker_160.SyncThingy' AND flatpak_id IS NULL; -- SyncThingy
UPDATE apps SET flatpak_id = 'com.synology.SynologyDrive' WHERE slug = 'com.synology.SynologyDrive' AND flatpak_id IS NULL; -- Synology Drive
UPDATE apps SET flatpak_id = 'io.github.plrigaux.sysd-manager' WHERE slug = 'io.github.plrigaux.sysd-manager' AND flatpak_id IS NULL; -- SysD Manager
UPDATE apps SET flatpak_id = 'io.github.hakandundar34coding.system-monitoring-center' WHERE slug = 'io.github.hakandundar34coding.system-monitoring-center' AND flatpak_id IS NULL; -- System Monitoring Center
UPDATE apps SET flatpak_id = 'org.nickvision.tagger' WHERE slug = 'org.nickvision.tagger' AND flatpak_id IS NULL; -- Tagger
UPDATE apps SET flatpak_id = 're.sonny.Tangram' WHERE slug = 're.sonny.Tangram' AND flatpak_id IS NULL; -- Tangram
UPDATE apps SET flatpak_id = 'dev.edfloreshz.Tasks' WHERE slug = 'dev.edfloreshz.Tasks' AND flatpak_id IS NULL; -- Tasks
UPDATE apps SET flatpak_id = 'com.github.taiko2k.tauonmb' WHERE slug = 'com.github.taiko2k.tauonmb' AND flatpak_id IS NULL; -- Tauon
UPDATE apps SET flatpak_id = 'com.teamspeak.TeamSpeak' WHERE slug = 'com.teamspeak.TeamSpeak' AND flatpak_id IS NULL; -- TeamSpeak
UPDATE apps SET flatpak_id = 'com.teamspeak.TeamSpeak3' WHERE slug = 'com.teamspeak.TeamSpeak3' AND flatpak_id IS NULL; -- TeamSpeak 3
UPDATE apps SET flatpak_id = 'org.telegram.desktop' WHERE slug = 'org.telegram.desktop' AND flatpak_id IS NULL; -- Telegram
UPDATE apps SET flatpak_id = 'org.tenacityaudio.Tenacity' WHERE slug = 'org.tenacityaudio.Tenacity' AND flatpak_id IS NULL; -- Tenacity
UPDATE apps SET flatpak_id = 'com.termius.Termius' WHERE slug = 'com.termius.Termius' AND flatpak_id IS NULL; -- Termius
UPDATE apps SET flatpak_id = 'org.texstudio.TeXstudio' WHERE slug = 'org.texstudio.TeXstudio' AND flatpak_id IS NULL; -- TeXstudio
UPDATE apps SET flatpak_id = 'org.gnome.TextEditor' WHERE slug = 'org.gnome.TextEditor' AND flatpak_id IS NULL; -- Text Editor
UPDATE apps SET flatpak_id = 'moe.launcher.the-honkers-railway-launcher' WHERE slug = 'moe.launcher.the-honkers-railway-launcher' AND flatpak_id IS NULL; -- The Honkers Railway Launcher
UPDATE apps SET flatpak_id = 'uk.co.powdertoy.tpt' WHERE slug = 'uk.co.powdertoy.tpt' AND flatpak_id IS NULL; -- The Powder Toy
UPDATE apps SET flatpak_id = 'com.thincast.client' WHERE slug = 'com.thincast.client' AND flatpak_id IS NULL; -- Thincast Remote Desktop Client
UPDATE apps SET flatpak_id = 'org.thonny.Thonny' WHERE slug = 'org.thonny.Thonny' AND flatpak_id IS NULL; -- Thonny
UPDATE apps SET flatpak_id = 'com.ticktick.TickTick' WHERE slug = 'com.ticktick.TickTick' AND flatpak_id IS NULL; -- TickTick
UPDATE apps SET flatpak_id = 'com.mastermindzh.tidal-hifi' WHERE slug = 'com.mastermindzh.tidal-hifi' AND flatpak_id IS NULL; -- TIDAL Hi-Fi
UPDATE apps SET flatpak_id = 'org.tigervnc.vncviewer' WHERE slug = 'org.tigervnc.vncviewer' AND flatpak_id IS NULL; -- TigerVNC Viewer
UPDATE apps SET flatpak_id = 'com.github.vikdevelop.timer' WHERE slug = 'com.github.vikdevelop.timer' AND flatpak_id IS NULL; -- Timer
UPDATE apps SET flatpak_id = 'app.tintero.Tintero' WHERE slug = 'app.tintero.Tintero' AND flatpak_id IS NULL; -- Tintero
UPDATE apps SET flatpak_id = 'it.mq1.TinyWiiBackupManager' WHERE slug = 'it.mq1.TinyWiiBackupManager' AND flatpak_id IS NULL; -- TinyWiiBackupManager
UPDATE apps SET flatpak_id = 'com.github.d4nj1.tlpui' WHERE slug = 'com.github.d4nj1.tlpui' AND flatpak_id IS NULL; -- TLP-UI
UPDATE apps SET flatpak_id = 'com.todoist.Todoist' WHERE slug = 'com.todoist.Todoist' AND flatpak_id IS NULL; -- Todoist
UPDATE apps SET flatpak_id = 'io.github.diegopvlk.Tomatillo' WHERE slug = 'io.github.diegopvlk.Tomatillo' AND flatpak_id IS NULL; -- Tomatillo
UPDATE apps SET flatpak_id = 'dev.dergs.Tonearm' WHERE slug = 'dev.dergs.Tonearm' AND flatpak_id IS NULL; -- Tonearm
UPDATE apps SET flatpak_id = 'io.emeric.toolblex' WHERE slug = 'io.emeric.toolblex' AND flatpak_id IS NULL; -- toolBLEx
UPDATE apps SET flatpak_id = 'org.torproject.torbrowser-launcher' WHERE slug = 'org.torproject.torbrowser-launcher' AND flatpak_id IS NULL; -- Tor Browser Launcher
UPDATE apps SET flatpak_id = 'com.ktechpit.torrhunt' WHERE slug = 'com.ktechpit.torrhunt' AND flatpak_id IS NULL; -- Torrhunt
UPDATE apps SET flatpak_id = 'com.github.joseexposito.touche' WHERE slug = 'com.github.joseexposito.touche' AND flatpak_id IS NULL; -- Touché
UPDATE apps SET flatpak_id = 'com.tradingview.tradingview' WHERE slug = 'com.tradingview.tradingview' AND flatpak_id IS NULL; -- TradingView
UPDATE apps SET flatpak_id = 'com.transmissionbt.Transmission' WHERE slug = 'com.transmissionbt.Transmission' AND flatpak_id IS NULL; -- Transmission
UPDATE apps SET flatpak_id = 'dev.deedles.Trayscale' WHERE slug = 'dev.deedles.Trayscale' AND flatpak_id IS NULL; -- Trayscale
UPDATE apps SET flatpak_id = 'dev.geopjr.Tuba' WHERE slug = 'dev.geopjr.Tuba' AND flatpak_id IS NULL; -- Tuba
UPDATE apps SET flatpak_id = 'org.altlinux.Tuner' WHERE slug = 'org.altlinux.Tuner' AND flatpak_id IS NULL; -- Tuner
UPDATE apps SET flatpak_id = 'org.turbowarp.TurboWarp' WHERE slug = 'org.turbowarp.TurboWarp' AND flatpak_id IS NULL; -- TurboWarp
UPDATE apps SET flatpak_id = 'com.tutanota.Tutanota' WHERE slug = 'com.tutanota.Tutanota' AND flatpak_id IS NULL; -- Tuta (Experimental)
UPDATE apps SET flatpak_id = 'com.voxdsp.TuxFishing' WHERE slug = 'com.voxdsp.TuxFishing' AND flatpak_id IS NULL; -- Tux Fishing
UPDATE apps SET flatpak_id = 'org.tuxpaint.Tuxpaint' WHERE slug = 'org.tuxpaint.Tuxpaint' AND flatpak_id IS NULL; -- Tux Paint
UPDATE apps SET flatpak_id = 'ar.com.tuxguitar.TuxGuitar' WHERE slug = 'ar.com.tuxguitar.TuxGuitar' AND flatpak_id IS NULL; -- TuxGuitar
UPDATE apps SET flatpak_id = 'io.github.mfat.tvhplayer' WHERE slug = 'io.github.mfat.tvhplayer' AND flatpak_id IS NULL; -- TVHplayer
UPDATE apps SET flatpak_id = 'dev.edfloreshz.CosmicTweaks' WHERE slug = 'dev.edfloreshz.CosmicTweaks' AND flatpak_id IS NULL; -- Tweaks
UPDATE apps SET flatpak_id = 'app.twintaillauncher.ttl' WHERE slug = 'app.twintaillauncher.ttl' AND flatpak_id IS NULL; -- Twintail Launcher
UPDATE apps SET flatpak_id = 'net.trowell.typesetter' WHERE slug = 'net.trowell.typesetter' AND flatpak_id IS NULL; -- Typesetter
UPDATE apps SET flatpak_id = 'io.typora.Typora' WHERE slug = 'io.typora.Typora' AND flatpak_id IS NULL; -- Typora
UPDATE apps SET flatpak_id = 'com.github.LongSoft.UEFITool' WHERE slug = 'com.github.LongSoft.UEFITool' AND flatpak_id IS NULL; -- UEFITool
UPDATE apps SET flatpak_id = 'com.ugetdm.uGet' WHERE slug = 'com.ugetdm.uGet' AND flatpak_id IS NULL; -- uGet
UPDATE apps SET flatpak_id = 'com.ulaa.Ulaa' WHERE slug = 'com.ulaa.Ulaa' AND flatpak_id IS NULL; -- Ulaa
UPDATE apps SET flatpak_id = 'com.ultimaker.cura' WHERE slug = 'com.ultimaker.cura' AND flatpak_id IS NULL; -- UltiMaker Cura
UPDATE apps SET flatpak_id = 'com.ktechpit.ultimate-media-downloader' WHERE slug = 'com.ktechpit.ultimate-media-downloader' AND flatpak_id IS NULL; -- Ultimate Media Downloader
UPDATE apps SET flatpak_id = 'io.github.yairm210.unciv' WHERE slug = 'io.github.yairm210.unciv' AND flatpak_id IS NULL; -- Unciv
UPDATE apps SET flatpak_id = 'io.github.ungoogled_software.ungoogled_chromium' WHERE slug = 'io.github.ungoogled_software.ungoogled_chromium' AND flatpak_id IS NULL; -- Ungoogled Chromium
UPDATE apps SET flatpak_id = 'com.unity.UnityHub' WHERE slug = 'com.unity.UnityHub' AND flatpak_id IS NULL; -- Unity Hub
UPDATE apps SET flatpak_id = 'io.gitlab.theevilskeleton.Upscaler' WHERE slug = 'io.gitlab.theevilskeleton.Upscaler' AND flatpak_id IS NULL; -- Upscaler
UPDATE apps SET flatpak_id = 'org.upscayl.Upscayl' WHERE slug = 'org.upscayl.Upscayl' AND flatpak_id IS NULL; -- Upscayl
UPDATE apps SET flatpak_id = 'eu.ithz.umftpd' WHERE slug = 'eu.ithz.umftpd' AND flatpak_id IS NULL; -- Usermode FTP Server
UPDATE apps SET flatpak_id = 'rocks.shy.VacuumTube' WHERE slug = 'rocks.shy.VacuumTube' AND flatpak_id IS NULL; -- VacuumTube
UPDATE apps SET flatpak_id = 'com.odnoyko.valot' WHERE slug = 'com.odnoyko.valot' AND flatpak_id IS NULL; -- Valot
UPDATE apps SET flatpak_id = 'io.github.giantpinkrobots.varia' WHERE slug = 'io.github.giantpinkrobots.varia' AND flatpak_id IS NULL; -- Varia
UPDATE apps SET flatpak_id = 'io.github.mpobaschnig.Vaults' WHERE slug = 'io.github.mpobaschnig.Vaults' AND flatpak_id IS NULL; -- Vaults
UPDATE apps SET flatpak_id = 'dev.vencord.Vesktop' WHERE slug = 'dev.vencord.Vesktop' AND flatpak_id IS NULL; -- Vesktop
UPDATE apps SET flatpak_id = 'com.viber.Viber' WHERE slug = 'com.viber.Viber' AND flatpak_id IS NULL; -- Viber
UPDATE apps SET flatpak_id = 'io.github.libvibrant.vibrantLinux' WHERE slug = 'io.github.libvibrant.vibrantLinux' AND flatpak_id IS NULL; -- vibrantLinux
UPDATE apps SET flatpak_id = 'net.sf.VICE' WHERE slug = 'net.sf.VICE' AND flatpak_id IS NULL; -- VICE
UPDATE apps SET flatpak_id = 'com.ozmartians.VidCutter' WHERE slug = 'com.ozmartians.VidCutter' AND flatpak_id IS NULL; -- VidCutter
UPDATE apps SET flatpak_id = 'com.github.unrud.VideoDownloader' WHERE slug = 'com.github.unrud.VideoDownloader' AND flatpak_id IS NULL; -- Video Downloader
UPDATE apps SET flatpak_id = 'org.gnome.Showtime' WHERE slug = 'org.gnome.Showtime' AND flatpak_id IS NULL; -- Video Player
UPDATE apps SET flatpak_id = 'org.gnome.gitlab.YaLTeR.VideoTrimmer' WHERE slug = 'org.gnome.gitlab.YaLTeR.VideoTrimmer' AND flatpak_id IS NULL; -- Video Trimmer
UPDATE apps SET flatpak_id = 'org.gnome.Totem' WHERE slug = 'org.gnome.Totem' AND flatpak_id IS NULL; -- Videos
UPDATE apps SET flatpak_id = 'org.vim.Vim' WHERE slug = 'org.vim.Vim' AND flatpak_id IS NULL; -- Vim
UPDATE apps SET flatpak_id = 'org.vinegarhq.Vinegar' WHERE slug = 'org.vinegarhq.Vinegar' AND flatpak_id IS NULL; -- Vinegar
UPDATE apps SET flatpak_id = 'at.vintagestory.VintageStory' WHERE slug = 'at.vintagestory.VintageStory' AND flatpak_id IS NULL; -- Vintage Story
UPDATE apps SET flatpak_id = 'org.virt_manager.virt-manager' WHERE slug = 'org.virt_manager.virt-manager' AND flatpak_id IS NULL; -- Virtual Machine Manager
UPDATE apps SET flatpak_id = 'com.visualstudio.code' WHERE slug = 'com.visualstudio.code' AND flatpak_id IS NULL; -- Visual Studio Code
UPDATE apps SET flatpak_id = 'com.vba_m.visualboyadvance-m' WHERE slug = 'com.vba_m.visualboyadvance-m' AND flatpak_id IS NULL; -- VisualBoyAdvance-M
UPDATE apps SET flatpak_id = 'com.vivaldi.Vivaldi' WHERE slug = 'com.vivaldi.Vivaldi' AND flatpak_id IS NULL; -- Vivaldi
UPDATE apps SET flatpak_id = 'org.videolan.VLC' WHERE slug = 'org.videolan.VLC' AND flatpak_id IS NULL; -- VLC
UPDATE apps SET flatpak_id = 'net.sourceforge.VMPK' WHERE slug = 'net.sourceforge.VMPK' AND flatpak_id IS NULL; -- VMPK
UPDATE apps SET flatpak_id = 'com.github.vkohaupt.vokoscreenNG' WHERE slug = 'com.github.vkohaupt.vokoscreenNG' AND flatpak_id IS NULL; -- vokoscreenNG
UPDATE apps SET flatpak_id = 'org.pulseaudio.pavucontrol' WHERE slug = 'org.pulseaudio.pavucontrol' AND flatpak_id IS NULL; -- Volume Control
UPDATE apps SET flatpak_id = 'com.borgbase.Vorta' WHERE slug = 'com.borgbase.Vorta' AND flatpak_id IS NULL; -- Vorta
UPDATE apps SET flatpak_id = 'com.vscodium.codium' WHERE slug = 'com.vscodium.codium' AND flatpak_id IS NULL; -- VSCodium
UPDATE apps SET flatpak_id = 'com.vscodium.codium-insiders' WHERE slug = 'com.vscodium.codium-insiders' AND flatpak_id IS NULL; -- VSCodium - Insiders
UPDATE apps SET flatpak_id = 'com.hamrick.VueScan' WHERE slug = 'com.hamrick.VueScan' AND flatpak_id IS NULL; -- VueScan
UPDATE apps SET flatpak_id = 'io.github.davidoc26.wallpaper_selector' WHERE slug = 'io.github.davidoc26.wallpaper_selector' AND flatpak_id IS NULL; -- Wallpaper Selector
UPDATE apps SET flatpak_id = 'io.github.swordpuffin.wardrobe' WHERE slug = 'io.github.swordpuffin.wardrobe' AND flatpak_id IS NULL; -- Wardrobe
UPDATE apps SET flatpak_id = 'io.github.flattool.Warehouse' WHERE slug = 'io.github.flattool.Warehouse' AND flatpak_id IS NULL; -- Warehouse
UPDATE apps SET flatpak_id = 'app.drey.Warp' WHERE slug = 'app.drey.Warp' AND flatpak_id IS NULL; -- Warp
UPDATE apps SET flatpak_id = 'org.x.Warpinator' WHERE slug = 'org.x.Warpinator' AND flatpak_id IS NULL; -- Warpinator
UPDATE apps SET flatpak_id = 'net.wz2100.wz2100' WHERE slug = 'net.wz2100.wz2100' AND flatpak_id IS NULL; -- Warzone 2100
UPDATE apps SET flatpak_id = 'net.waterfox.waterfox' WHERE slug = 'net.waterfox.waterfox' AND flatpak_id IS NULL; -- Waterfox
UPDATE apps SET flatpak_id = 'io.github.v81d.Wattage' WHERE slug = 'io.github.v81d.Wattage' AND flatpak_id IS NULL; -- Wattage
UPDATE apps SET flatpak_id = 'io.github.nroduit.Weasis' WHERE slug = 'io.github.nroduit.Weasis' AND flatpak_id IS NULL; -- Weasis
UPDATE apps SET flatpak_id = 'org.gnome.Weather' WHERE slug = 'org.gnome.Weather' AND flatpak_id IS NULL; -- Weather
UPDATE apps SET flatpak_id = 'org.kde.kweather' WHERE slug = 'org.kde.kweather' AND flatpak_id IS NULL; -- Weather
UPDATE apps SET flatpak_id = 'org.gnome.Epiphany' WHERE slug = 'org.gnome.Epiphany' AND flatpak_id IS NULL; -- Web
UPDATE apps SET flatpak_id = 'org.pvermeer.WebAppHub' WHERE slug = 'org.pvermeer.WebAppHub' AND flatpak_id IS NULL; -- Web App Hub
UPDATE apps SET flatpak_id = 'net.codelogistics.webapps' WHERE slug = 'net.codelogistics.webapps' AND flatpak_id IS NULL; -- Web Apps
UPDATE apps SET flatpak_id = 'com.daniel15.wcc' WHERE slug = 'com.daniel15.wcc' AND flatpak_id IS NULL; -- WebCamControl
UPDATE apps SET flatpak_id = 'io.github.webcamoid.Webcamoid' WHERE slug = 'io.github.webcamoid.Webcamoid' AND flatpak_id IS NULL; -- Webcamoid
UPDATE apps SET flatpak_id = 'io.github.spacingbat3.webcord' WHERE slug = 'io.github.spacingbat3.webcord' AND flatpak_id IS NULL; -- WebCord
UPDATE apps SET flatpak_id = 'com.jetbrains.WebStorm' WHERE slug = 'com.jetbrains.WebStorm' AND flatpak_id IS NULL; -- WebStorm
UPDATE apps SET flatpak_id = 'com.tencent.WeChat' WHERE slug = 'com.tencent.WeChat' AND flatpak_id IS NULL; -- WeChat
UPDATE apps SET flatpak_id = 'io.github.electronstudio.WeylusCommunityEdition' WHERE slug = 'io.github.electronstudio.WeylusCommunityEdition' AND flatpak_id IS NULL; -- Weylus Community Edition
UPDATE apps SET flatpak_id = 'org.wezfurlong.wezterm' WHERE slug = 'org.wezfurlong.wezterm' AND flatpak_id IS NULL; -- WezTerm
UPDATE apps SET flatpak_id = 'com.github.sdv43.whaler' WHERE slug = 'com.github.sdv43.whaler' AND flatpak_id IS NULL; -- Whaler
UPDATE apps SET flatpak_id = 'org.gabmus.whatip' WHERE slug = 'org.gabmus.whatip' AND flatpak_id IS NULL; -- What IP
UPDATE apps SET flatpak_id = 'com.ktechpit.whatsie' WHERE slug = 'com.ktechpit.whatsie' AND flatpak_id IS NULL; -- Whatsie
UPDATE apps SET flatpak_id = 'ink.whis.Whis' WHERE slug = 'ink.whis.Whis' AND flatpak_id IS NULL; -- Whis
UPDATE apps SET flatpak_id = 'it.mijorus.whisper' WHERE slug = 'it.mijorus.whisper' AND flatpak_id IS NULL; -- Whisper
UPDATE apps SET flatpak_id = 'com.github.hugolabe.Wike' WHERE slug = 'com.github.hugolabe.Wike' AND flatpak_id IS NULL; -- Wike
UPDATE apps SET flatpak_id = 'cn.xfangfang.wiliwili' WHERE slug = 'cn.xfangfang.wiliwili' AND flatpak_id IS NULL; -- wiliwili
UPDATE apps SET flatpak_id = 'com.mikrotik.WinBox' WHERE slug = 'com.mikrotik.WinBox' AND flatpak_id IS NULL; -- WinBox
UPDATE apps SET flatpak_id = 'org.winehq.Wine' WHERE slug = 'org.winehq.Wine' AND flatpak_id IS NULL; -- Wine
UPDATE apps SET flatpak_id = 'io.github.fastrizwaan.WineCharm' WHERE slug = 'io.github.fastrizwaan.WineCharm' AND flatpak_id IS NULL; -- WineCharm
UPDATE apps SET flatpak_id = 'io.github.aggalex.Wineglass' WHERE slug = 'io.github.aggalex.Wineglass' AND flatpak_id IS NULL; -- Wineglass
UPDATE apps SET flatpak_id = 'io.github.fastrizwaan.WineZGUI' WHERE slug = 'io.github.fastrizwaan.WineZGUI' AND flatpak_id IS NULL; -- WineZGUI
UPDATE apps SET flatpak_id = 'org.wireshark.Wireshark' WHERE slug = 'org.wireshark.Wireshark' AND flatpak_id IS NULL; -- Wireshark
UPDATE apps SET flatpak_id = 'io.github.wivrn.wivrn' WHERE slug = 'io.github.wivrn.wivrn' AND flatpak_id IS NULL; -- WiVRn server
UPDATE apps SET flatpak_id = 'com.realm667.Wolfenstein_Blade_of_Agony' WHERE slug = 'com.realm667.Wolfenstein_Blade_of_Agony' AND flatpak_id IS NULL; -- Wolfenstein: Blade of Agony
UPDATE apps SET flatpak_id = 'com.ktechpit.wonderwall' WHERE slug = 'com.ktechpit.wonderwall' AND flatpak_id IS NULL; -- Wonderwall
UPDATE apps SET flatpak_id = 'dev.mufeed.Wordbook' WHERE slug = 'dev.mufeed.Wordbook' AND flatpak_id IS NULL; -- Wordbook
UPDATE apps SET flatpak_id = 're.sonny.Workbench' WHERE slug = 're.sonny.Workbench' AND flatpak_id IS NULL; -- Workbench
UPDATE apps SET flatpak_id = 'cn.wps.wps_365' WHERE slug = 'cn.wps.wps_365' AND flatpak_id IS NULL; -- WPS 365
UPDATE apps SET flatpak_id = 'com.wps.Office' WHERE slug = 'com.wps.Office' AND flatpak_id IS NULL; -- WPS Office
UPDATE apps SET flatpak_id = 'io.sourceforge.wsjt.wsjtx' WHERE slug = 'io.sourceforge.wsjt.wsjtx' AND flatpak_id IS NULL; -- wsjtx
UPDATE apps SET flatpak_id = 'app.xmcl.voxelum' WHERE slug = 'app.xmcl.voxelum' AND flatpak_id IS NULL; -- X Minecraft Launcher
UPDATE apps SET flatpak_id = 'xyz.xclicker.xclicker' WHERE slug = 'xyz.xclicker.xclicker' AND flatpak_id IS NULL; -- XClicker
UPDATE apps SET flatpak_id = 'app.xemu.xemu' WHERE slug = 'app.xemu.xemu' AND flatpak_id IS NULL; -- xemu
UPDATE apps SET flatpak_id = 'dev.goats.xivlauncher' WHERE slug = 'dev.goats.xivlauncher' AND flatpak_id IS NULL; -- XIVLauncher
UPDATE apps SET flatpak_id = 'net.xmind.XMind' WHERE slug = 'net.xmind.XMind' AND flatpak_id IS NULL; -- Xmind (2025)
UPDATE apps SET flatpak_id = 'com.xnview.XnConvert' WHERE slug = 'com.xnview.XnConvert' AND flatpak_id IS NULL; -- XnConvert
UPDATE apps SET flatpak_id = 'com.xnview.XnViewMP' WHERE slug = 'com.xnview.XnViewMP' AND flatpak_id IS NULL; -- XnView MP
UPDATE apps SET flatpak_id = 'org.xonotic.Xonotic' WHERE slug = 'org.xonotic.Xonotic' AND flatpak_id IS NULL; -- Xonotic
UPDATE apps SET flatpak_id = 'com.github.xournalpp.xournalpp' WHERE slug = 'com.github.xournalpp.xournalpp' AND flatpak_id IS NULL; -- Xournal++
UPDATE apps SET flatpak_id = 'io.github.Geocld.XStreamingDesktop' WHERE slug = 'io.github.Geocld.XStreamingDesktop' AND flatpak_id IS NULL; -- XStreamingDesktop
UPDATE apps SET flatpak_id = 'com.yacreader.YACReader' WHERE slug = 'com.yacreader.YACReader' AND flatpak_id IS NULL; -- YACReader
UPDATE apps SET flatpak_id = 'org.kde.yakuake' WHERE slug = 'org.kde.yakuake' AND flatpak_id IS NULL; -- Yakuake
UPDATE apps SET flatpak_id = 'ru.yandex.Browser' WHERE slug = 'ru.yandex.Browser' AND flatpak_id IS NULL; -- Yandex Browser
UPDATE apps SET flatpak_id = 'io.github.strikerx3.ymir' WHERE slug = 'io.github.strikerx3.ymir' AND flatpak_id IS NULL; -- Ymir
UPDATE apps SET flatpak_id = 'page.codeberg.impromptux.ytdl-gui' WHERE slug = 'page.codeberg.impromptux.ytdl-gui' AND flatpak_id IS NULL; -- Yt Downloader
UPDATE apps SET flatpak_id = 'io.github.aandrew_me.ytdn' WHERE slug = 'io.github.aandrew_me.ytdn' AND flatpak_id IS NULL; -- ytDownloader
UPDATE apps SET flatpak_id = 'app.ytmdesktop.ytmdesktop' WHERE slug = 'app.ytmdesktop.ytmdesktop' AND flatpak_id IS NULL; -- YTMDesktop
UPDATE apps SET flatpak_id = 'com.yubico.yubioath' WHERE slug = 'com.yubico.yubioath' AND flatpak_id IS NULL; -- Yubico Authenticator
UPDATE apps SET flatpak_id = 'org.zaproxy.ZAP' WHERE slug = 'org.zaproxy.ZAP' AND flatpak_id IS NULL; -- ZAP
UPDATE apps SET flatpak_id = 'com.rtosta.zapzap' WHERE slug = 'com.rtosta.zapzap' AND flatpak_id IS NULL; -- ZapZap
UPDATE apps SET flatpak_id = 'dev.zed.Zed' WHERE slug = 'dev.zed.Zed' AND flatpak_id IS NULL; -- Zed
UPDATE apps SET flatpak_id = 'dev.zed.Zed-Preview' WHERE slug = 'dev.zed.Zed-Preview' AND flatpak_id IS NULL; -- Zed Preview
UPDATE apps SET flatpak_id = 'app.zen_browser.zen' WHERE slug = 'app.zen_browser.zen' AND flatpak_id IS NULL; -- Zen
UPDATE apps SET flatpak_id = 'org.nmap.Zenmap' WHERE slug = 'org.nmap.Zenmap' AND flatpak_id IS NULL; -- Zenmap
UPDATE apps SET flatpak_id = 'com.zettlr.Zettlr' WHERE slug = 'com.zettlr.Zettlr' AND flatpak_id IS NULL; -- Zettlr
UPDATE apps SET flatpak_id = 'us.zoom.Zoom' WHERE slug = 'us.zoom.Zoom' AND flatpak_id IS NULL; -- Zoom
UPDATE apps SET flatpak_id = 'org.zotero.Zotero' WHERE slug = 'org.zotero.Zotero' AND flatpak_id IS NULL; -- Zotero
UPDATE apps SET flatpak_id = 'io.github.xyproto.zsnes' WHERE slug = 'io.github.xyproto.zsnes' AND flatpak_id IS NULL; -- ZSNES

-- 2. Uncertain (13): each proposed id was looked up on flathub.org/api/v2/appstream on 2026-11-25 and is the same
-- app under its new id, so all 13 are on.
--    These also point install_command and download_url at the proposed id.
-- Desktop Plus (io.github.pol_rivero.github-desktop-plus): renamed, io.github.pol_rivero.github-desktop-plus no longer listed on Flathub; renamed to org.desktop_plus.desktop-plus
UPDATE apps SET flatpak_id = 'org.desktop_plus.desktop-plus', install_command = 'flatpak install flathub org.desktop_plus.desktop-plus', download_url = 'https://flathub.org/apps/org.desktop_plus.desktop-plus' WHERE slug = 'io.github.pol_rivero.github-desktop-plus' AND flatpak_id IS NULL;
-- InputLeap (io.github.input_leap.input-leap): renamed, io.github.input_leap.input-leap no longer listed on Flathub; renamed to org.deskflow.deskflow
UPDATE apps SET flatpak_id = 'org.deskflow.deskflow', install_command = 'flatpak install flathub org.deskflow.deskflow', download_url = 'https://flathub.org/apps/org.deskflow.deskflow' WHERE slug = 'io.github.input_leap.input-leap' AND flatpak_id IS NULL;
-- Jellyfin Media Player (com.github.iwalton3.jellyfin-media-player): renamed, com.github.iwalton3.jellyfin-media-player no longer listed on Flathub; renamed to org.jellyfin.JellyfinDesktop
UPDATE apps SET flatpak_id = 'org.jellyfin.JellyfinDesktop', install_command = 'flatpak install flathub org.jellyfin.JellyfinDesktop', download_url = 'https://flathub.org/apps/org.jellyfin.JellyfinDesktop' WHERE slug = 'com.github.iwalton3.jellyfin-media-player' AND flatpak_id IS NULL;
-- Keypunch (dev.bragefuglseth.Keypunch): renamed, dev.bragefuglseth.Keypunch no longer listed on Flathub; renamed to no.bragefuglseth.Keypunch
UPDATE apps SET flatpak_id = 'no.bragefuglseth.Keypunch', install_command = 'flatpak install flathub no.bragefuglseth.Keypunch', download_url = 'https://flathub.org/apps/no.bragefuglseth.Keypunch' WHERE slug = 'dev.bragefuglseth.Keypunch' AND flatpak_id IS NULL;
-- KWalletManager (org.kde.kwalletmanager5): renamed, org.kde.kwalletmanager5 no longer listed on Flathub; renamed to org.kde.kwalletmanager
UPDATE apps SET flatpak_id = 'org.kde.kwalletmanager', install_command = 'flatpak install flathub org.kde.kwalletmanager', download_url = 'https://flathub.org/apps/org.kde.kwalletmanager' WHERE slug = 'org.kde.kwalletmanager5' AND flatpak_id IS NULL;
-- Mecalin (io.github.nacho.mecalin): renamed, io.github.nacho.mecalin no longer listed on Flathub; renamed to io.github.nacho.teclas
UPDATE apps SET flatpak_id = 'io.github.nacho.teclas', install_command = 'flatpak install flathub io.github.nacho.teclas', download_url = 'https://flathub.org/apps/io.github.nacho.teclas' WHERE slug = 'io.github.nacho.mecalin' AND flatpak_id IS NULL;
-- Minder (com.github.phase1geo.minder): renamed, com.github.phase1geo.minder no longer listed on Flathub; renamed to io.github.phase1geo.minder
UPDATE apps SET flatpak_id = 'io.github.phase1geo.minder', install_command = 'flatpak install flathub io.github.phase1geo.minder', download_url = 'https://flathub.org/apps/io.github.phase1geo.minder' WHERE slug = 'com.github.phase1geo.minder' AND flatpak_id IS NULL;
-- Nuclear (org.js.nuclear.Nuclear): renamed, org.js.nuclear.Nuclear no longer listed on Flathub; renamed to com.nuclearplayer.Nuclear
UPDATE apps SET flatpak_id = 'com.nuclearplayer.Nuclear', install_command = 'flatpak install flathub com.nuclearplayer.Nuclear', download_url = 'https://flathub.org/apps/com.nuclearplayer.Nuclear' WHERE slug = 'org.js.nuclear.Nuclear' AND flatpak_id IS NULL;
-- Threema (ch.threema.threema-web-desktop): website, ch.threema.threema-web-desktop end of life on Flathub: "This version of Threema Desktop is no longer supported and won't receive any more updates. To keep using Threema as a Flatpak, please install Threema Desktop 2.0 with: flatpak install flathub ch.threema.threema-desktop"; "Threema Beta" has the same website but another name
UPDATE apps SET flatpak_id = 'ch.threema.threema-desktop', install_command = 'flatpak install flathub ch.threema.threema-desktop', download_url = 'https://flathub.org/apps/ch.threema.threema-desktop' WHERE slug = 'ch.threema.threema-web-desktop' AND flatpak_id IS NULL;
-- Thunderbird (org.mozilla.Thunderbird): id-case, org.mozilla.Thunderbird no longer listed on Flathub; org.mozilla.thunderbird differs only in letter case; Flathub's rename list points to org.mozilla.thunderbird_esr
UPDATE apps SET flatpak_id = 'org.mozilla.thunderbird', install_command = 'flatpak install flathub org.mozilla.thunderbird', download_url = 'https://flathub.org/apps/org.mozilla.thunderbird' WHERE slug = 'org.mozilla.Thunderbird' AND flatpak_id IS NULL;
-- Trilium Notes (com.github.zadam.trilium): renamed, com.github.zadam.trilium no longer listed on Flathub; renamed to org.triliumnotes.Trilium
UPDATE apps SET flatpak_id = 'org.triliumnotes.Trilium', install_command = 'flatpak install flathub org.triliumnotes.Trilium', download_url = 'https://flathub.org/apps/org.triliumnotes.Trilium' WHERE slug = 'com.github.zadam.trilium' AND flatpak_id IS NULL;
-- Tuner (com.github.louis77.tuner): renamed, com.github.louis77.tuner no longer listed on Flathub; renamed to io.github.tuner_labs.tuner
UPDATE apps SET flatpak_id = 'io.github.tuner_labs.tuner', install_command = 'flatpak install flathub io.github.tuner_labs.tuner', download_url = 'https://flathub.org/apps/io.github.tuner_labs.tuner' WHERE slug = 'com.github.louis77.tuner' AND flatpak_id IS NULL;
-- Video Downloader Tube2go (com.warlordsoftwares.tube2go): renamed, com.warlordsoftwares.tube2go no longer listed on Flathub; renamed to com.warlordsoftwares.media-downloader
UPDATE apps SET flatpak_id = 'com.warlordsoftwares.media-downloader', install_command = 'flatpak install flathub com.warlordsoftwares.media-downloader', download_url = 'https://flathub.org/apps/com.warlordsoftwares.media-downloader' WHERE slug = 'com.warlordsoftwares.tube2go' AND flatpak_id IS NULL;

-- 3. "snap install" commands that have a Flathub id (0). Linux Mint and CaramOS have no snap.
--    None in the data of 2026-11-25.
