(require 'multi-term)
(setq multi-term-program "/bin/bash")
(global-set-key "\M-!" 'multi-term)

(require 'windows)
(require 'revive)
(setq revive:configuration-file "~/.emacs.d/.revive.el")
(setq win:configuration-file "~/.emacs.d/.windows.el")
(win:startup-with-window)
(global-set-key "\C-c\C-f" 'resume)
(global-set-key "\C-c\C-s" 'save-current-configuration)
(global-set-key "\C-c\C-k" 'wipe)
(resume)
;(add-hook 'kill-emacs-hook 'save-current-configuration)

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

(require 'tramp)

;(require 'unicad)

;(server-start)
;(require 'sudo-ext)
