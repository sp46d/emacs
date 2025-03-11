(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

;; Basic setting
(set-frame-font "JetBrains Mono 9" nil t)
;; (set-frame-font "Source Code Pro 10" nil t)
(set-face-font 'variable-pitch "Roboto Slab-10")
;; (set-face-font 'variable-pitch "Dejavu Serif-10")

(put 'dired-find-alternate-file 'disabled nil)

(setq init-dir (file-name-directory (or load-file-name (buffer-file-name))))
(org-babel-load-file (expand-file-name "my_keybindings.org" init-dir))
(org-babel-load-file (expand-file-name "my_loader.org" init-dir))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
