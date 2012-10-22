;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;nXML-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'nxml-mode-hook
	'(lambda ()
;	   (setq nxml-slash-auto-complete-flag t)
	   (setq nxml-child-indent 4)
	   (setq indent-tabs-mode t)
))
