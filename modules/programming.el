;;; programming.el --- Programming module: Base for all programming major modes
;; Copyright © 2015 Gabriel Caires
;;
;; Author: Gabriel Caires<gabrielcairesmar@gmail.com>
;; URL: https://github.com/gabrielcaires/caires-emacs
;; Version: 1.0.0
;; Keywords: Misc
;;; Code:

(defun init-programming ()
  (message "initialize programming module")

  (use-package fill-column-indicator
    :init
    (add-hook 'prog-mode-hook 'fci-mode )
    :config
;;;	(setq fci-rule-color "red")
    )
  (use-package which-func)
  (use-package smooth-scrolling)
  (use-package flycheck
    :defer 2
    :diminish flycheck-mode
    :config
    (global-flycheck-mode +1))

  (use-package rainbow-delimiters
    :defer 2
    :config
    (rainbow-delimiters-mode t)
    )

  (use-package magit
    :config
    (setq magit-last-seen-setup-instructions "1.4.0")
    )
  ;; (use-package smartparens
  ;;   :defer 2
  ;;   :config
  ;;   (require 'smartparens-config)
  ;;   (require 'smartparens-ruby)
  ;;   (smartparens-global-mode t)
  ;;   (show-smartparens-global-mode +1))

  ;; Save when lost focus
  (require 'cl-lib)
  (add-hook 'focus-out-hook
            (lambda ()
              (cl-letf (((symbol-function 'message) #'format))
                      (save-some-buffers t))))

  ;; (use-package company
  ;;   :diminish company-mode
  ;;   :config
  ;;   (setq company-idle-delay 0.0)
  ;;   (setq company-tooltip-limit 10)
  ;;   (setq company-minimum-prefix-length 2)
  ;;   (setq company-tooltip-flip-when-above t)
  ;;   (setq company-dabbrev-code-ignore-case t)
  ;;   (setq company-dabbrev-code-ignore-case t)

  ;;   (global-company-mode 1))

  (use-package auto-complete
    :config
    (ac-config-default))
  )
(init-programming)
(provide 'programming)
