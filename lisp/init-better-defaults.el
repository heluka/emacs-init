;;config for ringbell shutdown
(setq ring-bell-function 'ignore)

;; config for abbrevmode
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("he" "hexiaochuan")
					    ))

;; config for dired mode
(fset 'yes-or-no-p 'y-or-n-p)
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

;; if there is a dired buffer displayed in the next window, use its
;; current subdir, instead of the current subdir of this dired buffer
(setq dired-dwim-target t)

;; not to spawn new buffer, always one buffer
(put 'dired-find-alternate-file 'disabled nil)

;; delay load until dired mode
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;; c-x c-j open current folder
(require 'dired-x)

(provide 'init-better-defaults)

