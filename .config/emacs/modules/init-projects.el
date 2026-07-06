(use-package projectile
  :ensure t
  :init
  (projectile-mode 1)
  :config
  (setq projectile-completion-system 'ivy))

(use-package magit
  :ensure t)

(provide 'init-projects)
