;;; programming.el --- Programming module: Base for all programming major modes
;; Copyright © 2015 Gabriel Caires
;;
;; Author: Bozhidar Batsov <gabrielcairesmar@gmail.com>
;; URL: https://github.com/gabrielcaires/caires-emacs
;; Version: 1.0.0
;; Keywords: convenience
;;; Code:

(defun init-programming ()
  (message "initialize programming module")
  (use-package which-func)
;;  (use-package expand-region
    ;;:config
  ;;  (setq expand-region-fast-keys-enabled nil)

    ;; Show expand-region command used
    ;;(setq er--show-expansion-message t)

   ;; )

  ;;(require 'which-func)
  ;;(which-function-mode 1)
;;  (use-package flycheck
;;    :diminish flycheck-mode
;;    :config
;;   (global-flycheck-mode +1)
;;   (custom-set-variables
;;	'(flycheck-display-errors-function #'flycheck-pos-ti
  (use-package rainbow-delimiters
    :defer 2
    :config
    (rainbow-delimiters-mode t)
    )

  (use-package magit
    :config
    (setq magit-last-seen-setup-instructions "1.4.0")
    )
  (use-package smartparens
    :defer 2
    :config
    (require 'smartparens-config)
    (require 'smartparens-ruby)
    (smartparens-global-mode t)
    (show-smartparens-global-mode +1))

  (use-package company
    :diminish company-mode
    :config
    (setq company-idle-delay 0.0)
    (setq company-tooltip-limit 10)
    (setq company-minimum-prefix-length 2)
    (setq company-tooltip-flip-when-above t)
    (global-company-mode 1)))

  ;; (use-package auto-complete
  ;;   :config
  ;;   (ac-config-default))
  ;; )
(init-programming)
(provide 'programming)
