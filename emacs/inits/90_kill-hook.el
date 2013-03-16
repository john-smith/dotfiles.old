;;;終了時に確認
(defun my-save-buffers-kill-emacs ()
  (interactive)
  (if (y-or-n-p "quit emacs? ")
	  (save-buffers-kill-emacs)))
;(global-set-key "\C-x\C-c" 'my-save-buffers-kill-emacs)
(global-set-key "\C-x\C-c" 'delete-frame)
(defalias 'exit 'my-save-buffers-kill-emacs)

(defun kill-hook-func()
  (interactive)
  (save-current-configuration))

(add-hook 'kill-emacs-hook
  '(lambda()
	 (kill-hook-func)))
