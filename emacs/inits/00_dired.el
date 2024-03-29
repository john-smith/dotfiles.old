;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;dired
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'wdired)
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)
(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'always)
(setq ls-lisp-dirs-first t)

(require 'dired-x)
(add-hook 'dired-mode-hook
	'(lambda ()
	   (local-set-key "\C-t" 'other-window)
))

;;; http://d.hatena.ne.jp/gan2/20070705/1183640419
;;; dired を使って、一気にファイルの coding system (漢字) を変換する
;; m でマークして T で一括変換
(require 'dired-aux)
(add-hook 'dired-mode-hook
          (lambda ()
            (define-key (current-local-map) "T"
              'dired-do-convert-coding-system)))

(defvar dired-default-file-coding-system nil
  "*Default coding system for converting file (s).")

(defvar dired-file-coding-system 'no-conversion)

(defun dired-convert-coding-system ()
  (let ((file (dired-get-filename))
        (coding-system-for-write dired-file-coding-system)
        failure)
    (condition-case err
        (with-temp-buffer
          (insert-file file)
          (write-region (point-min) (point-max) file))
      (error (setq failure err)))
    (if (not failure)
        nil
      (dired-log "convert coding system error for %s:\n%s\n" file failure)
      (dired-make-relative file))))

(defun dired-do-convert-coding-system (coding-system &optional arg)
  "Convert file (s) in specified coding system."
  (interactive
   (list (let ((default (or dired-default-file-coding-system
                            buffer-file-coding-system)))
           (read-coding-system
            (format "Coding system for converting file (s) (default, %s): "
                    default)
            default))
         current-prefix-arg))
  (check-coding-system coding-system)
  (setq dired-file-coding-system coding-system)
  (dired-map-over-marks-check
   (function dired-convert-coding-system) arg 'convert-coding-system t))

;(require 'popwin)
;(setq display-buffer-function 'popwin:display-buffer)

;(require 'direx)
;(global-set-key "\C-x\C-j" 'direx:find-directory-other-window)
;(push '(direx:direx-mode :position left :width 25 :dedicated t)
;      popwin:special-display-config)
