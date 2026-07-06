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

(provide 'init-keybindings)
