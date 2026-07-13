(use-package projectile
  :ensure t
  :init
  (projectile-mode 1)
  :config
  (setq projectile-completion-system 'vertico))

(use-package magit
  :ensure t)

(use-package ibuffer-projectile
  :ensure t)

(provide 'init-projects)
