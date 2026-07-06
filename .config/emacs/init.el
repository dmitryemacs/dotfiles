;; Load modules
(add-to-list 'load-path (expand-file-name "modules" user-emacs-directory))

(require 'init-packages)
(require 'init-ui)
(require 'init-theme)
(require 'init-completion)
(require 'init-evil)
(require 'init-projects)
(require 'init-keybindings)
(require 'init-org)
(require 'init-d)

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
