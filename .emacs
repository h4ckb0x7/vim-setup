(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(add-to-list 'load-path "~/.emacs.d/evil-tmux-navigate")

(setq package-enable-at-startup nil)
(package-initialize)

;; EVIL Mode
(require 'evil)
(evil-mode t)

;; Tmux Integration
(require 'navigate)

;; HELM
(require 'helm-config)

;; Git Integration
(global-set-key (kbd "C-x g") 'magit-status)

;; Mouse Support
(xterm-mouse-mode t)

;; Window Switching
;;(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
;;(define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
;;(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
;;(define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)

;; C Programming Style
(setq c-default-style "linux")

;; Tabs
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(defvaralias 'c-basic-offset 'tab-width)

;; Line Numbers
(global-linum-mode)
(setq linum-format "%d ")
(require 'hlinum)
(hlinum-activate)
(set-face-attribute 'linum-highlight-face nil :foreground "yellow" :background 'unspecified :weight 'bold)

;; Disable Extraneous Stuff
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; GUI Only Settings
(when (display-graphic-p)
    (require 'powerline)
    (powerline-center-evil-theme)
)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
