(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(fset 'yes-or-no-p 'y-or-n-p)
(server-start)

;; Environment settings
(tool-bar-mode 0)
(scroll-bar-mode 0)
(menu-bar-mode 0)
(tab-bar-mode 0)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Number mode
(column-number-mode 1)
(show-paren-mode 1)
(global-display-line-numbers-mode 1)

;; Pair mode
(electric-pair-mode 1)

;; Scroll settings
(setq scroll-step 1)
(setq scroll-conservatively 10000)
(setq auto-window-vscroll nil)

;; Cursor settings
(setq blink-cursor-blinks 0)
(blink-cursor-mode 1)

;; Font
(set-face-attribute 'default nil :font "Hack Nerd Font-15")

;; Custom cursor face
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "white")))))

;; Packages with use-package
(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-molokai t)
  (doom-themes-neotree-config)
  (doom-themes-org-config))

(use-package company
  :ensure t
  :init
  (global-company-mode 1))

(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1))

(use-package yasnippet-snippets
  :ensure t)

(use-package ivy
  :ensure t
  :init
  (ivy-mode 1))

(use-package swiper
  :ensure t
  :bind (("C-s" . swiper)))

(use-package magit
  :ensure t)

(use-package ace-window
  :ensure t
  :init
  (setq aw-ignore-minibuffer t)
  (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
  (setq aw-background "darkred")
  (setq aw-scale 10.0)
   :bind (("C-o" . ace-window)))

(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package d-mode
  :ensure t
  :mode ("\\.d\\'" . d-mode))

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

(use-package evil-collection
  :ensure t
  :after evil
  :config
  (evil-collection-init '(org magit)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(doom-molokai))
 '(custom-safe-themes
   '("a7b0f6df966667c8601d252ef42b76e2a3508e7ef8ccad801c80e2a6a2537497"
     default))
 '(package-selected-packages
             '(ace-window company d-mode doom-themes evil evil-collection magit org org-modern swiper yasnippet-snippets)))
