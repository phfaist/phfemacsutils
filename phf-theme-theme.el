(deftheme phf-theme
  "Created 2016-11-30.")

(custom-theme-set-variables
 'phf-theme
 '(TeX-PDF-mode t)
 '(TeX-source-correlate-mode t)
 '(bibtex-search-entry-globally t)
 '(blink-cursor-mode nil)
 '(c-basic-offset (quote set-from-style))
 '(c-default-style
   (quote
    ((java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu"))))
 '(c-offsets-alist
   (quote
    ((arglist-intro . ++)
     (arglist-cont . 0)
     (arglist-close . ++)
     (substatement-open . 0)
     (innamespace . 0))))
 '(column-number-mode t)
 '(confirm-kill-emacs (quote y-or-n-p))
 '(delete-active-region nil)
 '(electric-indent-mode -1)
 '(fill-column 80)
 '(font-latex-script-display (quote (nil)))
 '(font-use-system-font t)
 '(glasses-face (quote bold))
 '(glasses-original-separator "")
 '(glasses-separator "")
 '(history-delete-duplicates t)
 '(indent-tabs-mode nil)
 '(line-move-visual nil)
 '(matlab-case-level (quote (0 . 2)))
 '(matlab-indent-level 2)
 '(ns-command-modifier (quote meta))
 '(python-fill-docstring-style (quote django))
 '(reftex-label-alist (quote (AMSTeX)))
 '(reftex-plug-into-AUCTeX t)
 '(reftex-ref-macro-prompt t)
 '(reftex-ref-style-default-list (quote ("Default" "Hyperref")))
 '(require-final-newline (quote ask))
 '(show-paren-delay 0)
 '(show-paren-mode t)
 '(show-paren-style (quote expression))
 '(text-scale-mode-step 1.1)
 '(visual-fill-column-center-text t)
 '(visual-fill-column-fringes-outside-margins t)
 '(visual-fill-column-width 84)
 '(visual-line-fringe-indicators (quote (nil right-curly-arrow)))
 )


;; The theme has both a light and a dark version. You can choose which is
;; applied with "M-x customize-variable RET frame-background-mode"
;;
;; Dark version basic colors were inspired by wombat theme:
;; https://github.com/emacs-mirror/emacs/blob/master/etc/themes/wombat-theme.el

(custom-theme-set-faces
 'phf-theme
 '(default
    (( default
       ( :inherit nil :stipple nil :inverse-video nil :box nil
                  :strike-through nil :overline nil :underline nil :slant normal :weight normal :width normal) )
     ( ((type ns) (background dark)) ; Mac OS X, dark bg
       ( :height 150 :family "Menlo" :background "#242424" :foreground "#f6f3e8"))
     ( ((type ns) (background light)) ; Mac OS X, light bg
       ( :height 150 :family "Menlo" :background "#e7e8e9" ;"#dddee0"
                 :foreground "#000000"))
     ( ((background dark)) ; Other system, dark bg
       ( :height 110 :family "Droid Sans Mono" :background "#242424" :foreground "#f6f3e8"))
     ( t ; Other system, light bg
       ( :height 110 :family "Droid Sans Mono" :background "#e7e8e9" :foreground "#000000"))
    ))
 '(cursor ( (((background dark)) (:background "#757575"))
            (t (:background "red3")) ))
 '(fringe ( (((background dark)) (:background "#303030"))
            (t (:background "grey95")) ))
 '(highlight ( (((background dark)) (:background "#375037" :foreground nil :underline nil))
               (t (:background "darkseagreen2" :foreground nil :underline nil)) ))
 '(region ( (((background dark)) (:background "#444444" :foreground nil))
            (t (:background "#a0a0a0" :foreground nil)) ))
 '(secondary-selection ( (((background dark)) (:background "#5555aa"))
                         (t (:background "yellow1")) ))
 '(isearch ( (((background dark)) (:background "white" :foreground "red2" :weight bold))
             (t (:background "white" :foreground "red2" :weight bold)) ))
 '(lazy-highlight ( (((background dark)) (:background "white" :foreground "red2"))
                    (t (:background "white" :foreground "red2" :weight bold)) ))

 '(shadow
   ( (((type ns) (background dark)) ; Mac OS X, dark bg
      (:foreground "grey60" :height 130 :width condensed :family "Myriad Pro"))
     (((type ns)) ; Mac OS X, light bg
      (:foreground "grey50" :height 130 :width condensed :family "Myriad Pro"))
     (((background dark)) ; Other, dark bg
      (:foreground "grey60" :height 110 :width condensed :family "Droid Sans"))
     (t ; Other
      (:foreground "grey50" :height 110 :width condensed :family "Droid Sans")) ))
 '(show-paren-match ( (((background dark)) (:inherit highlight))
                      (t (:inherit highlight)) ))
 '(show-paren-mismatch ( (((background dark)) (:background "#b73750"))
                         (t (:background "DeepPink")) ))

 '(widget-field (  (((background dark)) (:background "#474747" :underline t))
                   (t (:background "grey85")) ))
 '(mode-line
   ((((class color) (background dark))
     (:background "#656565" :foreground "#f6f3e8"
                  :box (:line-width -1 :color nil :style released-button)))
    (((class color))
     (:foreground "black" :background "grey75"
                  :box (:line-width -1 :color nil :style released-button)))
    (t (:inverse-video t)) ))
 '(mode-line-inactive
   ( (default (:inherit mode-line))
     (((class color) (background dark)) (:background "#555555"))
     (((class color)) (:background "grey85")) ))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight
   ( (((class color) (background dark))
      (:box (:line-width 2 :color "grey20" :style released-button)))
     (((class color)) (:box (:line-width 2 :color "grey40" :style released-button)))
     (t (:inherit highlight)) ))

 '(minibuffer-prompt ( (((background dark)) (:foreground "#80a0f0"))
                       (t (:foreground "medium blue")) ))

 '(diff-context ( (((background dark)) (:foreground "gray60"))
                  (t (:background "gray50")) ))
 '(font-latex-italic-face ( (((background dark)) (:foreground "#b0c080" :slant italic))
                            (t (:foreground "DarkOliveGreen" :slant italic)) ))
 '(font-latex-bold-face ( (((background dark)) (:foreground "#b0c080" :weight bold))
                          (t (:foreground "DarkOliveGreen" :weight bold)) ))
 '(font-latex-sedate-face ( (((background dark)) (:inherit font-lock-function-name-face))
                            (t (:foreground "#4040a0")) ))
 '(font-latex-subscript-face ( (((background dark)) nil)
                               (t nil) ))
 '(font-latex-superscript-face ( (((background dark)) nil)
                                 (t nil) ))
 '(font-latex-warning-face ( (((background dark)) (:inherit bold :foreground "#ff5080"))
                             (t (:inherit bold :foreground "red4")) ))
 '(font-latex-string-face ( (((background dark)) (:foreground "#ffa07a"))
                            (t (:foreground "RosyBrown")) ))
 '(font-latex-math-face ( (((background dark)) (:foreground "#f7c070"))
                          (t (:foreground "SaddleBrown")) ))
 '(font-latex-sectioning-6-face ( (((background dark)) (:inherit default :foreground "#e0e080"))
                                  (t ((:foreground "blue4" :inherit variable-pitch :weight bold))) ))
 '(font-latex-sectioning-5-face ( (((background dark)) (:inherit default :foreground "#e0e080"))
                                  (t ((:foreground "blue4" :inherit variable-pitch :weight bold))) ))
 '(font-latex-sectioning-4-face ((t (:inherit font-latex-sectioning-5-face))))
 '(font-latex-sectioning-3-face ((t (:inherit font-latex-sectioning-4-face :weight bold :height 1.1))))
 '(font-latex-sectioning-2-face ((t (:inherit font-latex-sectioning-3-face))))
 '(font-latex-sectioning-1-face ((t (:inherit font-latex-sectioning-2-face))))
 '(font-lock-comment-face ( (((background dark)) (:foreground "#ff5050" :weight bold))
                            (t (:foreground "red3" :weight bold)) ))
 '(font-lock-keyword-face ( (((background dark)) (:foreground "#40d0d0" :weight bold))
                            (t (:foreground "#008080" :weight bold)) ))
 '(font-lock-preprocessor-face ( (((background dark)) (:foreground "#7080ff"))
                                 (t (:foreground "blue3")) ))
 '(font-lock-string-face ( (((background dark)) (:foreground "#40d040"))
                           (t (:foreground "green4")) ))
 '(font-lock-type-face ( (((background dark)) (:foreground "#60b7b7"))
                         (t (:foreground "cyan4")) ))
 '(font-lock-constant-face ( (((background dark)) (:inherit font-lock-type-face))
                             (t (:foreground "cadetblue")) ))
 '(font-lock-function-name-face ( (((background dark)) (:foreground "#80a0f0"))
                                  (t (:foreground "Blue4")) ))
 '(font-lock-builtin-face ( (((background dark)) (:foreground "#d080d0"))
                            (t (:foreground "purple")) ))
 '(font-lock-variable-name-face ( (((background dark)) (:inherit font-lock-builtin-face))
                                  (t (:foreground "magenta4")) ))
 
 '(matlab-cellbreak-face ((t (:inherit font-lock-comment-face :overline t :weight bold))))
 '(matlab-unterminated-string-face ((t (:inherit font-lock-string-face :underline t))))
 
 '(markdown-markup-face ((t (:foreground "gray60" :slant normal :weight normal))))

 '(flyspell-incorrect
   ( (((supports :underline (:style wave)) (background dark))
      (:underline (:style wave :color "#ff5050")))
     (((supports :underline (:style wave)))
      (:underline (:style wave :color "#Red1")))
     (t
      (:underline t)) ))
 )




(provide-theme 'phf-theme)
