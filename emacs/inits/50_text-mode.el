;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;text-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq default-major-mode 'text-mode)

(add-hook 'text-mode-hook
	'(lambda ()
	   (turn-on-auto-fill)
	   (local-set-key "\t" 'self-insert-command)
))
