;; Enable package.el and associated repositories.
(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (helm-projectile projectile linum-relative helm use-package evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Let 'use-package' manage our packages.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))


;; Packages
(use-package evil
  :config
  (evil-mode)
  :ensure t)
(use-package helm
  :bind (("M-x" . helm-M-x))
  :config
  (helm-mode 1)
  :ensure t)

(use-package projectile
  :config
  (projectile-global-mode)
  (setq projectile-completion-system 'helm)
  :ensure t)

(use-package helm-projectile
  :bind (("C-p" . helm-projectile-find-file))
  :config
  (helm-projectile-on)
  :ensure t)

(use-package linum-relative
  :config
  (global-linum-mode)
  (linum-relative-on)
  (setq linum-relative-current-symbol "")
  :ensure t)


;; Keybindings

;; window navigation
(define-key evil-normal-state-map (kbd "M-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "M-j") 'evil-window-down)
(define-key evil-normal-state-map (kbd "M-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "M-l") 'evil-window-right)


;; Org-mode settings
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
