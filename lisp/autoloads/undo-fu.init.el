(when (require 'undo-fu nil t)
  (setq undo-fu-ignore-keyboard-quit t)
  (global-unset-key (kbd "C-_"))
  (global-set-key (kbd "C-_") 'undo-fu-only-undo)
  (global-set-key (kbd "C-^") 'undo-fu-only-redo)
)
