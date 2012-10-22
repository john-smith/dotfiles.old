;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;tab
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun set-aurora-tab-width (num &optional local redraw)
	(interactive "nTab Width: ")
	(when local
		(make-local-variable 'tab-width)
		(make-local-variable 'tab-stop-list))
	(setq tab-width num)
	(setq tab-stop-list ())
	(while (<= num 256)
	  (setq tab-stop-list `(,@tab-stop-list ,num))
	  (setq num (+ num tab-width)))
	(when redraw (redraw-display)) tab-width)
(set-aurora-tab-width (setq default-tab-width (setq-default tab-width 4)))
(setq-default indent-tabs-mode t)
(setq-default c-basic-offset 4)
(setq-default c-auto-newline nil)
(setq-default c-tab-always-indenpt t)
;(global-set-key "\t" 'self-insert-command)
;(global-set-key "\C-i" 'indent-relative)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;表示関係
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;スクロール行数
(setq scroll-step 1)
;最後に1行入れる
(setq require-final-newline t)
;初期画面出さない
(setq inhibit-startup-screen t)
;左に行番号
;(global-linum-mode)
;現在の行と列
(line-number-mode t)
(column-number-mode t)

(menu-bar-mode 0)
;(tool-bar-mode 0)
;(scroll-bar-mode 0)
;横はみだしたとき
(setq default-truncate-lines t)
(setq truncate-partial-width-windows nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;color
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq show-paren-delay 0)
(show-paren-mode t)
(setq show-paren-style 'mixed)
(set-face-background 'show-paren-match-face "blue")
