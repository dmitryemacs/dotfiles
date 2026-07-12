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

(electric-pair-mode 1)
(winner-mode 1)

(setq scroll-step 1)
(setq scroll-conservatively 10000)
(setq auto-window-vscroll nil)

(setq blink-cursor-blinks 0)
(blink-cursor-mode 1)

(set-face-attribute 'default nil :font "Hack Nerd Font-15")

(custom-set-faces
 '(cursor ((t (:background "white")))))

(provide 'init-ui)
