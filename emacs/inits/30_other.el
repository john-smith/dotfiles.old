(require 'windows)
(require 'revive)
(setq revive:configuration-file "~/.emacs.d/.revive.el")
(setq win:configuration-file "~/.emacs.d/.windows.el")
(win:startup-with-window)
(global-set-key "\C-c\C-f" 'resume)
(global-set-key "\C-c\C-s" 'save-current-configuration)
(global-set-key "\C-c\C-k" 'wipe)
(resume)
(run-with-idle-timer 900 t 'save-current-configuration)

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

(require 'tramp)

;(require 'unicad)
