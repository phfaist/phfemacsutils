

;;
;; C-UP & C-DOWN as in XEmacs please
;;
(global-set-key '[(ctrl up)]   (lambda() (interactive) (previous-line 6)))
(global-set-key '[(ctrl down)] (lambda() (interactive) (next-line 6)))


;;
;; Disable Meta-H to keep Mac behavior as "hide application"
;;
(global-set-key '[(meta h)]   'ns-do-hide-emacs)



;; Mouse Scrolling
;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(6 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling

;; and scoll bar on the right
(set-scroll-bar-mode 'right)   ; replace 'right with 'left to place it to the left


;; some additional Unicode characters: single-quote-left and single-quote-right
;; see https://emacs.stackexchange.com/a/7294
(define-key 'iso-transl-ctl-x-8-map (kbd "* [") [?‹])
(define-key 'iso-transl-ctl-x-8-map (kbd "* ]") [?›])


;; fix for Emacs 28 -- https://github.com/d12frosted/homebrew-emacs-plus/issues/383
(when (eq system-type 'darwin)
  (setq insert-directory-program "/opt/homebrew/bin/gls"))



(load "phf-llm-polymode")


;; add MathJax to markdown-preview-mode
(require 'markdown-preview-mode)
(setq markdown-preview-stylesheets
      (list "https://phfaist.github.io/phfemacsutils/phf-markdown-preview-mode-style.css"))
(setq markdown-preview-javascript
      (list "https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.4/MathJax.js?config=TeX-MML-AM_CHTML"
            "https://phfaist.github.io/phfemacsutils/phf-markdown-preview-mode-hacks.js"))




(if (eq window-system 'ns)
    (when (display-graphic-p)
      ;; dark mode on Mac OS X
;      (add-to-list 'default-frame-alist '(ns-appearance . dark))
      ))






;;
;; flyspell: use context menu on mac (mouse-3)
;;
(if (eq window-system 'ns)
    (eval-after-load "flyspell"
      '(progn
         (define-key flyspell-mouse-map [down-mouse-3] #'flyspell-correct-word)
         (define-key flyspell-mouse-map [mouse-3] #'undefined)))
  nil
  )




;;
;; AUCTeX settings
;;

;;
;; Settings to use when editing LaTeX files
;;
(add-hook 'LaTeX-mode-hook '(lambda ()
                              (interactive)
                              (if (string-equal (file-name-extension (buffer-file-name)) "tex")
                                  (progn
                                    (turn-on-reftex)
                                    (flyspell-mode t)
                                    (if (< (buffer-size) 50000) (flyspell-buffer) ())
                                    (text-scale-adjust 0)
                                    (phf-edit-text 3)
                                    ))
                              ))



;;
;; atomic-chrome plug-in to edit text in Firefox or Chrome
;;
;; Disable Ctrl-C because when editing LaTeX on overleaf, it's too easy to hit
;; Ctrl-C by mistake and disconnect! (In AucTeX, Ctrl-C is used to compile the
;; document.)
;;

(with-eval-after-load "atomic-chrome"
  (define-key atomic-chrome-edit-mode-map (kbd "C-c C-c") 'nil)
  )

;; (defvar
;;   (let ((map (make-sparse-keymap)))
;;     (define-key map (kbd "C-c C-s") 'atomic-chrome-send-buffer-text)
;;     (define-key map (kbd "C-c C-c") 'atomic-chrome-close-current-buffer)
;;     map)
;;   "Keymap for minor mode `atomic-chrome-edit-mode'.")


;; (defun my-atomic-chrome-config ()
;;   "For use in `atomic-chrome-edit-mode-hook' disable C-c C-c binding."
;;   (local-set-key (kbd "C-c C-c") 'nil)
;;   )
;; (add-hook 'atomic-chrome-edit-mode-hook
;;           'my-atomic-chrome-config)
