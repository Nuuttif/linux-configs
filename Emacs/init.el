(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)

  (package-install 'use-package))


;; THEME 
(use-package doom-themes
  :if window-system
  :ensure t
  :config
  (load-theme 'doom-dracula t)
  (doom-themes-org-config)
  (doom-themes-visual-bell-config)
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (fringe-mode -1)
  (scroll-bar-mode -1))

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

;; Set the title
(setq dashboard-banner-logo-title "Hello!")
(setq dashboard-startup-banner "~/.emacs.d/banner.png")
;; Value can be
;; 'official which displays the official emacs logo
;; 'logo which displays an alternative emacs logo
;; 1, 2 or 3 which displays one of the text banners
;; "path/to/your/image.gif", "path/to/your/image.png" or "path/to/your/text.txt" which displays whatever gif/image/text you would prefer

;; Content is not centered by default. To center, set
(setq dashboard-center-content t)
(setq dashboard-set-footer nil)
(setq dashboard-show-shortcuts nil)


;; EVIL
(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t) ;; This is optional since it's already set to t by default.
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))


;; APPS
(use-package vterm
  :ensure t
  :init)

(use-package ranger 
  :ensure t)


;; FUNCTIONALITY
(use-package highlight-parentheses
  :ensure t)
(global-highlight-parentheses-mode)

(use-package evil-nerd-commenter 
  :ensure t)

(use-package aggressive-indent
  :ensure t)
(global-aggressive-indent-mode 1)
(add-to-list 'aggressive-indent-excluded-modes 'html-mode)

(use-package company
  :ensure t
  :init)
(add-hook 'after-init-hook 'global-company-mode)

(use-package sudo-edit
  :ensure t
  :commands (sudo-edit))

(fset 'yes-or-no-p 'y-or-n-p)
(setq use-dialog-box nil)

(use-package quickrun
  :ensure t
  ;; :custom
  ;; (quickrun-timeout-seconds 60)
  :bind
  (("C-c e" . quickrun)
   ("C-c C-e" . quickrun-shell))
  :init)

(use-package rust-mode
  :ensure t
  :init)

(use-package csharp-mode 
  :ensure t
  :init)

(use-package python-mode 
  :ensure t
  :init)

(use-package lua-mode 
  :ensure t
  :init)


;; Remap Open Dashboard
(defun new-dashboard ()
  "Jump to the dashboard buffer, if doesn't exists create one."
  (interactive)
  (switch-to-buffer dashboard-buffer-name)
  (dashboard-mode)
  (dashboard-insert-startupify-lists)
  (dashboard-refresh-buffer))
(global-set-key (kbd "<f1>") 'new-dashboard)


;; SETTINGS
(global-display-line-numbers-mode)
(electric-pair-mode 1) 

;; Fix right alt on OSX
;; (setq mac-right-option-modifier 'none)

;; KEYBINDINGS 
(global-set-key [67108908] 'vterm)
(global-set-key [67108903] 'ranger)

(global-set-key [C-return] 'split-window-right)
(global-set-key "" 'evil-window-left)
(global-set-key "" 'evil-window-right)
(global-set-key [8388711] 'text-scale-increase)
(global-set-key [8388707] 'text-scale-decrease)

(define-key evil-normal-state-map (kbd "gc") 'evilnc-comment-or-uncomment-lines)
(global-set-key "\363s" 'sudo-edit)

