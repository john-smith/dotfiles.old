(require 'ess-site)
(setq ess-ask-for-ess-directory nil)
(add-hook 'R-mode-hook
		  '(lambda()
			 (local-unset-key "_")))
