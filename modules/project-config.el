(defun init-project ()
  (message "Init Project module")

  (use-package undo-tree
    :diminish undo-tree-mode)

   ;;:config
    ;;(global-undo-tree-mode))
  (use-package grizzl)
  (use-package projectile
    :diminish projectile-mode
    :config
    (projectile-global-mode t)
    (use-package neotree
      :config
      (global-set-key [f8] 'neotree-toggle)
      (setq projectile-switch-project-action 'neotree-projectile-action))
    )
  (use-package helm
    :ensure t
    :diminish helm-mode
    :init
    (progn
      (require 'helm-config)
      (setq helm-candidate-number-limit 100)
      ;; From https://gist.github.com/antifuchs/9238468
      (setq helm-idle-delay 0.0 ; update fast sources immediately (doesn't).
        helm-input-idle-delay 0.01  ; this actually updates things
                    ; reeeelatively quickly.
        helm-yas-display-key-on-candidate t
        helm-quick-update t
        helm-M-x-requires-pattern nil
        helm-ff-skip-boring-files t)
      (helm-mode))
    :bind (("C-c h" . helm-mini)
       ("C-h a" . helm-apropos)
       ("C-x C-b" . helm-buffers-list)
       ("C-x b" . helm-buffers-list)
       ("M-p"  . helm-projectile)
       ("M-y" . helm-show-kill-ring)
       ("M-x" . helm-M-x)
       ("C-x c o" . helm-occur)
       ("C-x c s" . helm-swoop)
       ("C-x c y" . helm-yas-complete)
       ("C-x c Y" . helm-yas-create-snippet-on-region)
       ("C-x c b" . my/helm-do-grep-book-notes)
       ("C-x c SPC" . helm-all-mark-rings)))
  (use-package helm-ag
    :config
    (custom-set-variables
       '(helm-ag-base-command "ack --nocolor --nogroup"))
    (helm-ag-mode)
    )
  )
(defun projectile-helm-ag ()
  (interactive)
  (helm-ag (projectile-project-root)))

(init-project)
(provide 'project-config)
