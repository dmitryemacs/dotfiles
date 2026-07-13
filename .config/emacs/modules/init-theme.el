(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-monokai-spectrum t)
  (doom-themes-neotree-config)
  (doom-themes-org-config))

(provide 'init-theme)
