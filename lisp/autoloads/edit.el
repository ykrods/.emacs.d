; --------
; edit.el
; --------
(setq kill-whole-line t)

;; highlight parenthesis
(show-paren-mode t)

;; highlight region
(setq transient-mark-mode t)

;; swap copy and cut
(global-set-key (kbd "C-w") 'kill-ring-save)
(global-set-key (kbd "M-w") 'kill-region)

(global-unset-key (kbd "C-u"))
(global-set-key (kbd "C-u") 'backward-kill-word)

;; disable commands; default: C-x C-l
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)

;; default to unified diffs
(setq diff-switches "-u")

(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

(electric-indent-mode -1)
(electric-pair-mode 1)

;; ^M = C-q C-M
;; RET = C-q C-j
(defun replace-M-to-return ()
  (interactive)
  (query-replace "\r" "\n"))

(require 'redo+)
(global-set-key (kbd "C-^") 'redo)
