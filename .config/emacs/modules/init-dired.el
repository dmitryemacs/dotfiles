(use-package dired
  :ensure nil
  :config
  (setq dired-listing-switches "-alh")
  (setq dired-dwim-target t)
  (setq dired-recursive-copies 'always)
  (setq dired-recursive-deletes 'top)
  (define-key dired-mode-map (kbd "<backspace>") 'dired-up-directory))

(use-package diredfl
  :ensure t
  :config
  (diredfl-global-mode 1))

(provide 'init-dired)
