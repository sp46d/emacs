(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

;; Setting default fonts and file regiesters for different OS
;; 1. MacOS-specific setup
(use-package emacs
  :if (eq system-type 'darwin)
  :init
  (set-frame-font "JetBrains Mono 12" nil t)
  (set-face-font 'variable-pitch "Roboto Slab-12")
  (set-register ?i '(file . "~/.emacs.d/init.el"))
  (set-register ?l '(file . "~/.emacs.d/my_loader.org"))
  (set-register ?k '(file . "~/.emacs.d/my_keybindings.org")))


;; 2. Linux-specific setup
(use-package emacs
  :if (eq system-type 'gnu/linux)
  :init
  (set-frame-font "JetBrains Mono 10" nil t)
  (set-face-font 'variable-pitch "Roboto Slab-10")
  (set-register ?i '(file . "~/.config/emacs/init.el"))
  (set-register ?l '(file . "~/.config/emacs/my_loader.org"))
  (set-register ?k '(file . "~/.config/emacs/my_keybindings.org")))


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
