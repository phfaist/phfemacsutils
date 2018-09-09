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
; '(custom-enabled-themes nil)
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

(custom-theme-set-faces
 'phf-theme
 '(default
    (( default
       ( :inherit nil :stipple nil :background "#dddee0" :foreground "#000000" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :width normal) )
     ( ((type ns)) ; Mac OS X
       ( :height 150 :family "Menlo"))
     ( t ; Other system
       ( :height 110 :family "Droid Sans Mono")))
    )
 '(cursor ((t (:background "red3"))))
 '(diff-context ((t (:foreground "gray50"))))
 '(font-latex-italic-face ((((class color) (background light)) (:foreground "DarkOliveGreen" :slant italic))))
 '(font-latex-sedate-face ((((class color) (background light)) (:foreground "#4040a0"))))
 '(font-latex-subscript-face ((t nil)))
 '(font-latex-superscript-face ((t nil)))
 '(font-latex-warning-face ((((class color) (background light)) (:inherit bold :foreground "red4"))))
 '(font-lock-builtin-face ((((class color) (min-colors 88) (background light)) (:foreground "purple"))))
 '(font-lock-comment-face ((((class color) (min-colors 88) (background light)) (:foreground "red3" :weight bold))))
 '(font-lock-constant-face ((((class color) (min-colors 88) (background light)) (:foreground "cadetblue"))))
 '(font-lock-function-name-face ((((class color) (min-colors 88) (background light)) (:foreground "Blue4"))))
 '(font-lock-keyword-face ((((class color) (min-colors 88) (background light)) (:foreground "#008080" :weight bold))))
 '(font-lock-preprocessor-face ((t (:foreground "blue3"))))
 '(font-lock-string-face ((((class color) (min-colors 88) (background light)) (:foreground "green4"))))
 '(font-lock-type-face ((((class color) (min-colors 88) (background light)) (:foreground "cyan4"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 88) (background light)) (:foreground "magenta4"))))
 '(isearch ((((class color) (min-colors 88) (background light)) (:background "white" :foreground "red2" :weight bold))))
 '(lazy-highlight ((((class color) (min-colors 88) (background light)) (:background "white" :foreground "red2" :weight bold))))
 '(matlab-cellbreak-face ((t (:inherit font-lock-comment-face :overline t :weight bold))))
 '(matlab-unterminated-string-face ((t (:inherit font-lock-string-face :underline t))))
 '(markdown-markup-face ((t (:foreground "gray60" :slant normal :weight normal))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(region
   (( ((class color) (min-colors 88) (background light))
      (:background "#a0a0a0")))
   )
 '(shadow
   (( ((type ns)) ; Mac OS X
      (:foreground "grey50" :height 130 :width condensed :family "Myriad Pro"))
    ( t ; Other
      (:foreground "grey50" :height 110 :width condensed :family "Droid Sans"))
    ))
 '(show-paren-match ((t (:inherit highlight))))
 '(show-paren-mismatch ((((class color)) (:background "DeepPink"))))
 )


(provide-theme 'phf-theme)
