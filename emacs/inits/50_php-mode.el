(require 'php-mode)

(add-hook 'php-mode-hook
  '(lambda ()
	 (setq php-mode-force-pear t)
	 (setq indent-tabs-mode nil)))
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))

