;;; programming.el --- Programming module: Base for all programming major modes
;; Copyright © 2015 Gabriel Caires
;;
;; Author: Bozhidar Batsov <gabrielcairesmar@gmail.com>
;; URL: https://github.com/gabrielcaires/caires-emacs
;; Version: 1.0.0
;; Keywords: convenience
;;; Code:
(defun init ()
  (message "initialize programming module")
  (require 'which-func)
  (which-function-mode 1)
  (use-package flycheck
    :diminish flycheck-mode
    :config
    (global-flycheck-mode +1)
    (custom-set-variables
	'(flycheck-display-errors-function #'flycheck-pos-tip-error-messages))
    (setq flycheck-highlighting-mode 'lines)
    (setq flycheck-indication-mode 'right-fringe))

  (use-package rainbow-delimiters
    :defer 2
    :config
    (rainbow-delimiters-mode t)
    )

  (use-package smartparens
    :defer 2
    :config
    (require 'smartparens-config)
    (smartparens-global-mode t)
    (show-smartparens-global-mode +1))

  (use-package company
    :diminish company-mode
    :config
    (setq company-idle-delay 0.5)
    (setq company-tooltip-limit 10)
    (setq company-minimum-prefix-length 2)
    (setq company-tooltip-flip-when-above t)
    (global-company-mode 1)))

(add-hook 'after-init-hook 'init)
(provide 'programming)
