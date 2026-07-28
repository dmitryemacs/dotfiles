(fset 'yes-or-no-p 'y-or-n-p)
(server-start)

(tool-bar-mode 0)
(scroll-bar-mode 0)
(menu-bar-mode 0)
(tab-bar-mode 0)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(column-number-mode 1)
(show-paren-mode 1)
(global-display-line-numbers-mode 1)

(use-package emacs
  :init
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier 'none))

(electric-pair-mode 1)
(winner-mode 1)

(use-package ace-window
  :ensure t
  :bind (("M-o" . ace-window)
         ("C-x o" . ace-window)
         ("C-x w" . aw-dispatch-delete))
  :config
  (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
  (setq aw-background nil)

  (defun aw-dispatch-delete ()
    "Select a window with ace-window keys and delete it."
    (interactive)
    (let ((aw-dispatch-function
           (lambda ()
             (let ((w (aw--pop-window)))
               (aw-delete-window w)))))
      (ace-window))))

(use-package avy
  :ensure t
  :bind (("C-:" . avy-goto-char)
         ("C-'" . avy-goto-char-2)
         ("M-g w" . avy-goto-word-0)))

(use-package which-key
  :ensure t
  :init
  (which-key-mode 1))

(use-package ibuffer
  :ensure nil
  :bind ("C-x C-b" . ibuffer)
  :config
  (setq ibuffer-filter-group-name-function 'ibuffer-projectile-root-filter-group-name)
  (add-hook 'ibuffer-hook
            (lambda ()
              (ibuffer-projectile-set-filter-groups)
              (unless (eq ibuffer-sorting-mode 'alphabetic)
                (ibuffer-do-sort-by-alphabetic)))))

(setq scroll-step 1)
(setq scroll-conservatively 10000)
(setq auto-window-vscroll nil)

(setq blink-cursor-blinks 0)
(blink-cursor-mode 1)

(set-face-attribute 'default nil :font "Hack Nerd Font-15")

(custom-set-faces
 '(cursor ((t (:background "white")))))

(add-to-list 'display-buffer-alist
             '("\\*compilation\\*"
               (display-buffer-reuse-window display-buffer-in-direction)
               (direction . bottom)
               (window-height . 0.2)))

(advice-add 'compile :after
            (lambda (&rest _) (when (get-buffer "*compilation*")
                                 (select-window (get-buffer-window "*compilation*")))))

(provide 'init-ui)
