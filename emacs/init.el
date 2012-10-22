;;;load path
(setq load-path
  (append
   (list 
    (expand-file-name "~/dotfiles/emacs/elisp/")
    (expand-file-name "~/dotfiles/emacs/auto-install/")
    (expand-file-name "~/dotfiles/emacs/elisp/tramp")
   ) load-path))

;;;設定ファイルを読み込む
(require 'init-loader)
;ログバッファは出さない
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/dotfiles/emacs/inits/")

;;init-loader.elのエラーログ改善
;;http://d.hatena.ne.jp/shiba_yu36/20101229/1293624201
(defun init-loader-re-load (re dir &optional sort)
  (let ((load-path (cons dir load-path)))
    (dolist (el (init-loader--re-load-files re dir sort))
      (condintion-case e
          (let ((time (car (benchmark-run (load (file-name-sans-extension el))))))
            (init-loader-log (format "loaded %s. %s" (locate-library el) time)))
        (error
         ;; (init-loader-error-log (error-message-string e)) ；削除
         (init-loader-error-log (format "%s. %s" (locate-library el) (error-message-string e))) ;追加
         )))))
