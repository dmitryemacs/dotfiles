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
  (ivy-mode 1)
  :config
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t))

(use-package counsel
  :ensure t
  :after ivy
  :config
  (counsel-mode 1))

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

(use-package which-key
  :ensure t
  :config
  (which-key-mode 1))

(use-package general
  :ensure t
  :after evil
  :config
  (general-evil-setup)

  (general-create-definer leader
    :prefix "SPC"
    :global-prefix "C-SPC")

  (leader
    :keymaps 'override
    "." '(counsel-find-file :which-key "find file")
    "SPC" '(counsel-M-x :which-key "M-x")
    ";" '(counsel-imenu :which-key "imenu")
    "'" '(projectile-switch-project :which-key "projectile")
    "b b" '(ivy-switch-buffer :which-key "switch buffer")
    "b d" '(kill-current-buffer :which-key "kill current buffer")
    "b k" '(kill-buffer :which-key "kill buffer")
    "f f" '(counsel-find-file :which-key "find file")
    "f r" '(counsel-recentf :which-key "recent files")
    "f s" '(save-buffer :which-key "save buffer")
    "p p" '(projectile-switch-project :which-key "switch project")
    "p f" '(projectile-find-file :which-key "find file in project")
    "w v" '(split-window-right :which-key "split right")
    "w s" '(split-window-below :which-key "split below")
    "w d" '(delete-window :which-key "delete window")
    "w o" '(delete-other-windows :which-key "delete other windows")
    "w h" '(evil-window-left :which-key "window left")
    "w j" '(evil-window-down :which-key "window down")
    "w k" '(evil-window-up :which-key "window up")
    "w l" '(evil-window-right :which-key "window right")
    "w w" '(other-window :which-key "other window")
    "q q" '(save-buffers-kill-terminal :which-key "quit emacs")
    "t t" '(toggle-truncate-lines :which-key "truncate lines")
    "t n" '(display-line-numbers-mode :which-key "line numbers")))

(use-package projectile
  :ensure t
  :init
  (projectile-mode 1)
  :config
  (setq projectile-completion-system 'ivy))

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
             '(ace-window company counsel d-mode doom-themes evil evil-collection general magit org org-modern projectile swiper which-key yasnippet-snippets)))
