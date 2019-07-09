;; installed packages.  Don't delete this line.  If you don't want it,
;; Added by Package.el.  This must come before configurations of
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;;(package-initialize)
;; just for setup our own source



(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'init-packages)
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-org-mode)
(require 'init-keyboards)

(setenv "PATH" (concat "usr/local/smlnj/bin:" (getenv "PATH")))
(setq exec-path (cons "usr/local/smlnj/bin" exec-path))

(setq custom-file (expand-file-name "lisp/customs.el" user-emacs-directory))

(load-file custom-file)

