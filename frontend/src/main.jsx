import React from 'react'
import ReactDOM from 'react-dom/client'
import { BrowserRouter } from 'react-router-dom'
import App from './App'
import { LocaleProvider } from './i18n/useLocale.jsx'
import { AuthProvider } from './hooks/useAuth.jsx'
import { ThemeProvider } from './hooks/useTheme.jsx'
import { rememberCaramosVisit } from './lib/install'
import './index.css'

// ?from=caramos (the CaramOS App Center's link): remember it for the install box.
rememberCaramosVisit()

ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <BrowserRouter>
      <ThemeProvider>
        <LocaleProvider>
          <AuthProvider>
            <App />
          </AuthProvider>
        </LocaleProvider>
      </ThemeProvider>
    </BrowserRouter>
  </React.StrictMode>
)
