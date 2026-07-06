(use-package org
  :ensure t
  :hook (org-mode . visual-line-mode)
  :config
  (setq org-adapt-indentation t)
  (setq org-hide-leading-stars t)
  (setq org-fold-catch-invisible-edits 'smart)
  (setq org-special-ctrl-a/e t)
  (setq org-use-speed-commands t))

(use-package org-modern
  :ensure t
  :hook (org-mode . org-modern-mode))

(provide 'init-org)
