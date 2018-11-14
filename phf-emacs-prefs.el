

;;
;; C-UP & C-DOWN as in XEmacs please
;;
(global-set-key '[(ctrl up)]   (lambda() (interactive) (previous-line 6)))
(global-set-key '[(ctrl down)] (lambda() (interactive) (next-line 6)))


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



;; add MathJax to markdown-preview-mode
(require 'markdown-preview-mode)
(setq markdown-preview-stylesheets
      (list "https://cdn.rawgit.com/phfaist/phfemacsutils/master/phf-markdown-preview-mode-style.css"))
(setq markdown-preview-javascript
      (list "https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.4/MathJax.js?config=TeX-MML-AM_CHTML"
            "https://cdn.rawgit.com/phfaist/phfemacsutils/master/phf-markdown-preview-mode-hacks.js"))




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
                                    (text-scale-adjust 2)
                                    (phf-edit-text 3)
                                    ))
                              ))

