;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;sgml(html)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'sgml-mode-hook
	'(lambda ()
	   (setq sgml-basic-offset 2)
	   (setq indent-tabs-mode nil)
))

