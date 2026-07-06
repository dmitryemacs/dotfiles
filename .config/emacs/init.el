;; Load modules
(let* ((file (or load-file-name buffer-file-name
                  (and (stringp (symbol-value 'user-init-file)) user-init-file)))
       (dir (file-name-directory (file-truename file))))
  (load (expand-file-name "modules/init-packages" dir) nil :nomessage)
  (load (expand-file-name "modules/init-ui" dir) nil :nomessage)
  (load (expand-file-name "modules/init-theme" dir) nil :nomessage)
  (load (expand-file-name "modules/init-completion" dir) nil :nomessage)
  (load (expand-file-name "modules/init-evil" dir) nil :nomessage)
  (load (expand-file-name "modules/init-projects" dir) nil :nomessage)
  (load (expand-file-name "modules/init-keybindings" dir) nil :nomessage)
  (load (expand-file-name "modules/init-org" dir) nil :nomessage)
  (load (expand-file-name "modules/init-d" dir) nil :nomessage))

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
