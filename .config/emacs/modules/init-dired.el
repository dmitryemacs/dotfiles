(use-package dired
  :ensure nil
  :config
  (setq dired-listing-switches "-alh")
  (setq dired-dwim-target t)
  (setq dired-recursive-copies 'always)
  (setq dired-recursive-deletes 'top)
  (setq dired-kill-when-opening-new-dired-buffer t)
  (put 'dired-find-alternate-file 'disabled nil))

(use-package diredfl
  :ensure t
  :config
  (diredfl-global-mode 1))

(use-package dired-subtree
  :ensure t
  :after evil
  :config
  (evil-set-initial-state 'dired-mode 'normal)
  (evil-collection-dired-setup)
  (evil-define-key* 'normal dired-mode-map
    "h" 'dired-up-directory
    "l" 'dired-find-alternate-file
    (kbd "DEL") 'dired-up-directory))

(provide 'init-dired)
