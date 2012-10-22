;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;言語設定
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;(set-locale-environment nil)
;(set-language-environment "Japanese")
;;for mac
;(require 'ucs-normalize)
;(prefer-coding-system 'utf-8-hfs)
;(setq file-name-coding-system 'utf-8-hfs)
;(setq locale-coding-system 'utf-8-hfs)
;;for other
;(prefer-coding-system 'utf-8)
;(setq file-name-coding-system 'utf-8)
;(setq locale-coding-system 'utf-8)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;キーバインド
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\C-x \C-h" 'help-command)
(global-set-key "\M-k" 'kill-this-buffer)
(global-set-key "\C-t" 'other-window)
(global-set-key "\C-cj" 'goto-line)
(global-set-key "\M-p" 'scroll-down)
(global-set-key "\M-n" 'scroll-up)
(global-set-key "\C-xv" 'shrink-window)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;フィアルの自動バックアップ
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq auto-save-list-file-name nil)
(setq auto-save-list-file-prefix nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;その他
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;改行まで消す
;(setq kill-whole-line t)

;autorevert
(global-auto-revert-mode t)

;yes or no ではなく y or n　
(fset 'yes-or-no-p 'y-or-n-p)
(auto-compression-mode t)
(delete-selection-mode 1)
;(auto-image-file-mode t)
;(display-time)
(setq vc-follow-symlinks t)
;bookmarkをセットする
(global-set-key "C-cb" 'bookmark-set)
;read-onlyなバッファの内容もkill-ringに入れれるようにする
(setq kill-read-only-ok t)
