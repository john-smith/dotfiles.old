;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;text-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq default-major-mode 'text-mode)

(add-hook 'text-mode-hook
	'(lambda ()
	   (turn-off-auto-fill)
	   (local-set-key "\t" 'self-insert-command)
))
