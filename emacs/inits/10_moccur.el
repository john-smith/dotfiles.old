(require 'color-moccur)
(global-set-key "\C-\M-o" 'occur-by-moccur)
(setq moccur-split-word t)
(add-to-list 'dmoccur-exclusion-mask "\\.DS_Store")
(require 'moccur-edit)
