;; BASICS VISUAL CONFIGURATION

;; PACKAGES MELPA
(require 'dashboard)
(require 'page-break-lines)
(require 'projectile)
(require 'all-the-icons)
(require 'doom-modeline)

;;THEME
(load-theme 'deeper-blue t)

;;INHIBIT STARTUP SCREEN
(setq inhibit-startup-screen t)

;;CUA MODE
(cua-mode t)

;;TOOLTIPS
(scroll-bar-mode -1)
(tooltip-mode -1)
(tool-bar-mode -1)

;;DASHBOARD
(require 'dashboard)
(dashboard-setup-startup-hook)
(setq initial-buffer-choice (lambda () (get-buffer-create "*dashboard*"))) ;;CREATE DASHBOARD
(setq dashboard-banner-logo-title "Welcome to Emacs SirDaiel") ;;WELCOME TYPE
(setq dashboard-startup-banner 'logo) ;;STARTUP BANNER
(setq dashboard-center-content t) ;; CENTRALIZED CONTENT
(setq dashboard-items '((recents  . 5)
                        (bookmarks . 5)
                        (projects . 5)
                        (registers . 5))) ;;widgets
(setq dashboard-item-names '(("Recent Files:" . "Recently opened files:"))) ;;HEADING NAME
(setq dashboard-set-heading-icons t) ;;HEADING ICONS 
(setq dashboard-set-file-icons t) ;;FILES ICONS
(setq dashboard-show-shortcuts nil) ;;SHORTCUTS FOR PROJECT AND RECENT FILES
(dashboard-modify-heading-icons '((recents . "file-text")
                                  (bookmarks . "book"))) ;; ICONS MODIFICATIONS

;; LINES
(add-hook 'text-mode-hook 'linum-mode)
(add-hook 'prog-mode-hook 'linum-mode)

;; DOOM MODELINE
(add-hook 'after-init-hook #'doom-modeline-mode) ;;SETING DOOMLINE
(setq doom-modeline-buffer-encoding t)

(setq doom-modeline-indent-info nil)
(setq doom-modeline-checker-simple-format t)

(setq doom-modeline-number-limit 99)
(setq doom-modeline-vcs-max-length 12)

(setq doom-modeline-workspace-name t)
(setq doom-modeline-persp-name t)

(setq doom-modeline-display-default-persp-name nil)
(setq doom-modeline-persp-icon t)
(setq doom-modeline-lsp t)
(setq doom-modeline-github nil)
(setq doom-modeline-github-interval (* 30 60))
(setq doom-modeline-modal t)
(setq doom-modeline-modal-icon t)
(setq doom-modeline-gnus t)
(setq doom-modeline-gnus-timer 2)

(setq doom-modeline-gnus-excluded-groups '("dummy.group"))
(setq doom-modeline-irc t)
(setq doom-modeline-irc-stylize 'identity)
(setq doom-modeline-battery t)
(setq doom-modeline-time t)
(setq doom-modeline-display-misc-in-all-mode-lines t)
;; MODELINE ENVIROMENT
(setq doom-modeline-env-version t)
(setq doom-modeline-env-load-string "...")
(setq doom-modeline-always-visible-segments '(mu4e irc))
(setq doom-modeline-before-update-env-hook nil)
(setq doom-modeline-after-update-env-hook nil)
