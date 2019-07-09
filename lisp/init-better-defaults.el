;;config for ringbell shutdown
(setq ring-bell-function 'ignore)

;; config for abbrevmode
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("he" "hexiaochuan")
					    ))


(provide 'init-better-defaults)
