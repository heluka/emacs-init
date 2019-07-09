(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives '(("gnu" . "http://elpa.emacs-china.org/gnu/")
				   ("melpa" . "http://elpa.emacs-china.org/melpa/")))
  )

(require 'cl)

(defvar my/packages '(
		      company
		      monokai-theme
		      hungry-delete
		      swiper
		      counsel
		      smartparens
		      popwin
		      reveal-in-osx-finder

			  ) "Default packages")

(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
  (loop for pkg in my/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (my/packages-installed-p)
  (message "%s" "Refreshing package database....")
  (package-refresh-contents)
  (dolist (pkg my/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; config for company auto-complete mode, globally on effect
(global-company-mode t)

;; config for help windown problem
(require 'popwin)
(popwin-mode t)

;; config for hungry-delete
(require 'hungry-delete)
(global-hungry-delete-mode)

;; config for smartparens
(require 'smartparens-config)
;; config smartparens only for emacs-lisp
;;(add-hook 'emacs-lisp-mode-hook #'smartparens-mode)
;; config smartparens globally
(smartparens-global-mode t)

;; config for swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

;; config for theme
(load-theme 'monokai t)

;; ready for external ref
(provide 'init-packages)
