;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;C系共通
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'c-mode-common-hook
	'(lambda ()
		(c-set-style "k&r")
		(setq indent-tabs-mode t)
		(setq c-basic-offset 4)
))
