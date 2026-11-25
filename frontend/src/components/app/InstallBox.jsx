import { useEffect, useRef, useState } from 'react'
import { useLocale } from '../../i18n/useLocale.jsx'
import { IconCheck, IconCopy, IconDownload } from '../icons'
import {
  caramosInstallUrl, terminalInstallCommand, installScriptUrl, flatpakrefUrl, isFromCaramos,
} from '../../lib/install'
import './InstallBox.css'

// The browser cannot tell whether caramos-app:// opened anything, so after this
// long we say what to do if the App Center did not open.
const HINT_DELAY_MS = 4000

// Install box for apps that are on Flathub. Visitors who came from the CaramOS
// App Center (?from=caramos) see the CaramOS button first, everyone else the
// terminal command first. Render it with key={flatpakId} so it starts fresh
// for each app.
export default function InstallBox({ flatpakId }) {
  const { t } = useLocale()
  const [caramosFirst] = useState(isFromCaramos)
  const [copied, setCopied] = useState(false)
  const [showHint, setShowHint] = useState(false)
  const hintTimer = useRef(null)
  const copyTimer = useRef(null)
  const codeRef = useRef(null)

  useEffect(() => () => {
    clearTimeout(hintTimer.current)
    clearTimeout(copyTimer.current)
  }, [])

  const command = terminalInstallCommand(flatpakId)
  // Fresh Ubuntu installs may not have curl ("curl: command not found").
  const [curlBefore, curlAfter = ''] = t('curlMissing').split('{command}')

  const copyCommand = async () => {
    try {
      await navigator.clipboard.writeText(command)
      setCopied(true)
      clearTimeout(copyTimer.current)
      copyTimer.current = setTimeout(() => setCopied(false), 2000)
    } catch {
      // No clipboard access: select the command so Ctrl+C works.
      const range = document.createRange()
      range.selectNodeContents(codeRef.current)
      window.getSelection().removeAllRanges()
      window.getSelection().addRange(range)
    }
  }

  const onCaramosClick = () => {
    setShowHint(false)
    clearTimeout(hintTimer.current)
    hintTimer.current = setTimeout(() => setShowHint(true), HINT_DELAY_MS)
  }

  const caramosButton = (
    <a
      href={caramosInstallUrl(flatpakId)}
      onClick={onCaramosClick}
      className={caramosFirst ? 'btn btn-primary btn-lg' : 'btn btn-secondary'}
    >
      <IconDownload /> {t('installOnCaramos')}
    </a>
  )

  const hint = showHint && (
    <p className="install-box-hint" role="status">
      {t(caramosFirst ? 'caramosHintBelow' : 'caramosHintAbove')}
    </p>
  )

  const terminal = (
    <div className="install-box-terminal">
      {caramosFirst && <h3 className="install-box-label">{t('otherLinux')}</h3>}
      <p className="install-box-steps">{t('terminalSteps')}</p>
      <div className="install-command">
        <code ref={codeRef}>{command}</code>
        <button type="button" onClick={copyCommand} className="install-copy" title={t('copyCommand')}>
          {copied ? <><IconCheck /> {t('copied')}</> : <><IconCopy /> {t('copyCommand')}</>}
        </button>
      </div>
      <p className="install-box-note">
        {curlBefore}<code>sudo apt install curl</code>{curlAfter}
      </p>
    </div>
  )

  return (
    <section className="install-box" aria-labelledby="install-box-title">
      <h2 id="install-box-title" className="install-box-title">{t('install')}</h2>
      {caramosFirst ? (
        <>
          <div className="install-box-caramos">
            {caramosButton}
            {hint}
          </div>
          {terminal}
        </>
      ) : (
        <>
          {terminal}
          <div className="install-box-caramos">
            <span className="install-box-label">{t('usingCaramos')}</span>
            {caramosButton}
            {hint}
          </div>
        </>
      )}
      <p className="install-box-more">
        <span>
          <a href={flatpakrefUrl(flatpakId)}>{t('downloadFlatpakref')}</a>
          {' '}<span className="install-box-muted">({t('flatpakrefHint')})</span>
        </span>
        <a href={installScriptUrl} target="_blank" rel="noopener">{t('viewScript')}</a>
      </p>
    </section>
  )
}
