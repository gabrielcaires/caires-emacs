(defun init-evil ()
  (message "Initialize Evil mode")
  ;; (define-key evil-insert-state-map (kbd "C-[") 'evil-force-normal-state)
  (use-package evil
    :config
    (setq evil-emacs-state-cursor  '("red" box))
    (setq evil-normal-state-cursor '("gray" box))
    (setq evil-visual-state-cursor '("gray" box))
    (setq evil-insert-state-cursor '("gray" bar))
    (setq evil-motion-state-cursor '("gray" box))
    (setq evil-esc-delay 0)
    (setq evil-auto-indent t)
    (setq evil-regexp-search t)
    (setq evil-want-C-i-jump t)
    (add-hook 'prog-mode-hook 'evil-mode)
    )
  ;; (use-package evil-smartparens
  ;;   :config
  ;;   (add-hook 'smartparens-enabled-hook #'evil-smartparens-mode)
  ;;   )
  )

(init-evil)
(provide 'evil-config)
