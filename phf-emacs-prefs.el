

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
