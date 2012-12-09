(defun my-eshell-prompt ()
  (concat
   "[" (user-login-name) "@" (car (split-string system-name "\\.")) ":" (eshell/pwd) "]\n" (if (= (user-uid) 0) "# " "$ ")))


(setq eshell-cmpl-ignore-case t)
(setq eshell-ask-to-save-last-dir (quote always))
(setq eshell-cmpl-cycle-completions t)
(setq eshell-cmpl-cycle-cutoff-length 3)
(setq eshell-hist-ignoredups t)
(setq eshell-prompt-function 'my-eshell-prompt)
(setq eshell-prompt-regexp "^[^#$]*[$#] ")
(add-hook 'eshell-mode-hook
		  '(lambda()
			 (setq truncate-lines nil)
			 (define-key eshell-mode-map "\C-a" 'eshell-bol)
			 (define-key (current-local-map) "\C-c\C-w" nil)))

;; Emacs起動時にEshellを起動
(add-hook 'after-init-hook (lambda() (eshell) ))
