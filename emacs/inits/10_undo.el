(require 'undohist)
(undohist-initialize)

(require 'undo-tree nil t)
(global-undo-tree-mode)
(global-set-key "\C-x u" 'undo-tree-visualize)

(require 'redo+)
(global-set-key "\C-\M-_" 'redo)
(global-set-key (kbd "C-M-/") 'redo)
(setq undo-no-redo t)
(setq undo-limit 65535)
(setq undo-strong-limit 65535)
