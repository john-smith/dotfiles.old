;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;nXML-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'nxml-mode-hook
	'(lambda ()
;	   (setq nxml-slash-auto-complete-flag t)
	   (setq nxml-child-indent 2)
	   (setq indent-tabs-mode nil)
))
