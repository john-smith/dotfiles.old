(require 'anything-startup)
(require 'anything)
(require 'anything-config)
(require 'anything-project)
(require 'descbinds-anything)
(require 'anything-c-moccur)
(require 'anything-match-plugin)

(require 'anything-complete)
;(require 'anything-auto-install)
;(require 'anything-grep)

(global-set-key "\C-x\C-a" 'anything)
(global-set-key "\M-y" 'anything-show-kill-ring)
(setq anything-kill-ring-threshold 20)

(setq anything-su-or-sudo "sudo")

(descbinds-anything-install)
(setq anything-sources '(
	anything-c-source-buffers
	anything-c-source-bookmarks
	anything-c-source-recentf
	anything-c-source-files-in-current-dir+
	anything-c-source-ffap-guesser
	anything-c-source-kill-ring))

(global-set-key "\C-c\C-f" 'anything-project)
(setq ap:project-files-filters (list 
	(lambda (files)
		(remove-if 'file-directory-p files)
	)))

(setq
	anything-c-moccur-higligt-info-line-flag t
	anything-c-moccur-enable-auto-look-flag t
	anything-c-moccur-enable-initial-pattern t)
(global-set-key "\M-o" 'anything-c-moccur-occur-by-moccur)

(anything-read-string-mode 1)

(defun anything-for-document ()
	"Preconfigured `anything for anything-for-document."
	(interactive)
	(anything anything-for-document-sources
		(thing-at-point 'symbol) nil nil nil "*anything for document*"))

(global-set-key "\C-x\C-f" 'anything-find-file)
