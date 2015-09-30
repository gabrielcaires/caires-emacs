(defun init-evil ()
  (message "Initialize Evil mode")
  ;; (define-key evil-insert-state-map (kbd "C-[") 'evil-force-normal-state)
  (use-package evil
    :init
    (setq evil-emacs-state-cursor  '("red" box))
    (setq evil-normal-state-cursor '("gray" box))
    (setq evil-visual-state-cursor '("gray" box))
    (setq evil-insert-state-cursor '("gray" bar))
    (setq evil-motion-state-cursor '("gray" box))
    (setq evil-esc-delay 0)
    (setq evil-auto-indent t)
    (setq evil-regexp-search t)
    (setq evil-want-C-i-jump t)
    :config
    (evil-mode +1)
    (setq expand-region-contract-fast-key "z")
    )
  (use-package evil-leader
    :config
    (evil-leader/set-key "xx" 'er/expand-region)
    )
  )

(init-evil)
(provide 'evil-config)
