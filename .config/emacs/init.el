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

;; Custom cursor face
(custom-set-faces
 '(cursor ((t (:background "white")))))

;; Packages with use-package
(use-package company
  :ensure t
  :init
  (global-company-mode 1))

(use-package ivy
  :ensure t
  :init
  (ivy-mode 1))

(use-package nix-mode
  :ensure t)

(use-package swiper
  :ensure t
  :bind (("C-s" . swiper)))

(use-package ace-window
  :ensure t
  :init
  (setq aw-ignore-minibuffer t)
  (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
  (setq aw-background "darkred")
  (setq aw-scale 10.0)
  :bind (("C-o" . ace-window)))

(use-package gruber-darker-theme
  :ensure t
  :init
  (load-theme 'gruber-darker t))

(use-package magit
  :ensure t)

;; c-mode settings
(setq-default c-basic-offset 4
              c-default-style '((java-mode . "java")
                                (awk-mode . "awk")
                                (other . "bsd")))
(add-hook 'c-mode-hook (lambda ()
                         (interactive)
                         (c-toggle-comment-style -1)))


;; compilation
(defun my/compilation-setup ()
  (setq compilation-window-height 20)
  (setq display-buffer-alist
        '(("\\*compilation\\*"
           (display-buffer-below-selected)
           (window-height . fit-window-to-buffer)))))

(add-hook 'compilation-mode-hook 'my/compilation-setup)

;; map
(global-set-key (kbd "C-c c") 'compile)

;; Ensure packages are installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("e13beeb34b932f309fb2c360a04a460821ca99fe58f69e65557d6c1b10ba18c7"
     "9c6aa7eb1bde73ba1142041e628827492bd05678df4d9097cda21b1ebcb8f8b9"
     default))
 '(package-selected-packages
   '(ace-window company gptel gruber-darker-theme magit
		nix-mode swiper)))
