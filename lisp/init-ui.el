(tool-bar-mode -1)
;; turn off tool-bar

(scroll-bar-mode -1)
;; turn off scroll-bar

(global-linum-mode t)
;; show line number

(setq inhibit-splash-screen t)
;; shutdown the splash screen

(setq-default cursor-type 'bar)
;; set the cursor type

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
;; add the recent files

(delete-selection-mode t)
;; turn on the delete-selection

(setq initial-frame-alist (quote ((fullscreen . maximized))))
;; open with full screen

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
;; open the highlight matching parenthese

(global-hl-line-mode t)
;; highlight the current line

(set-face-attribute 'default nil :height 160)
;; modify the default font size to 16pt

;; solve indent normalization problem
(defun indent-buffer ()
  "indent the currently visited buffer"
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer ()
  "indent a region if selected, otherwise the whole buffer"
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indented selected region"))
      (progn
	(indent-buffer)
	(message "Indented buffer")))))

(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)

;; config for hippie-expand
;; hippie expand is dabbrev expand on steroids
(setq hippie-expand-try-functions-list '(try-expand-dabbrev
                                         try-expand-dabbrev-all-buffers
                                         try-expand-dabbrev-from-kill
                                         try-complete-file-name-partially
                                         try-complete-file-name
                                         try-expand-all-abbrevs
                                         try-expand-list
                                         try-expand-line
                                         try-complete-lisp-symbol-partially
                                         try-complete-lisp-symbol))

(global-set-key (kbd "s-/") 'hippie-expand)

(provide 'init-ui)
