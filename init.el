
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;;(package-initialize)
;; just for setup our own source

;;config for ringbell shutdown
(setq ring-bell-function 'ignore)

(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'init-packages)


(tool-bar-mode -1)
; turn off tool-bar

(scroll-bar-mode -1)
; turn off scroll-bar

(global-linum-mode t)
; show line number

(setq inhibit-splash-screen t)
; shutdown the splash screen

(defun open-my-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f4>") 'open-my-init-file)


(setq-default cursor-type 'bar)
; set the cursor type

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
; add the recent files

(delete-selection-mode t)
; turn on the delete-selection

(setq initial-frame-alist (quote ((fullscreen . maximized))))
; open with full screen

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
; open the highlight matching parenthese

(global-hl-line-mode t)
;; highlight the current line

(set-face-attribute 'default nil :height 160)
;; modify the default font size to 16pt

(setenv "PATH" (concat "usr/local/smlnj/bin:" (getenv "PATH")))
(setq exec-path (cons "usr/local/smlnj/bin" exec-path))




;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

;; config for org agenda
(setq org-agenda-files '("~/org"))
(global-set-key (kbd "C-c a") 'org-agenda)

;; config for abbrevmode
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("he" "hexiaochuan")
					    ))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(eldoc-idle-delay 0.2)
 '(package-selected-packages (quote (sml-mode company monokai-theme hungry-delete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
