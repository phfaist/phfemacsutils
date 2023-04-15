
(require 'polymode)


;; (define-hostmode phf-flm-polymode-hostmode
;;   :mode 'latex-mode)

(define-innermode phf-flm-polymode-yamlfrontmatter-innermode
  :mode 'yaml-mode
  :head-matcher "\\\`[ \t\n]*---\n"  ;"\`[ \t\n]*---\n"
  :tail-matcher "^---\n"
  :head-mode 'host
  :tail-mode 'host)

(define-polymode phf-flm-polymode
  :hostmode 'poly-latex-hostmode
  :innermodes '(phf-flm-polymode-yamlfrontmatter-innermode ))


;; Custom extensions for major modes
(add-to-list 'auto-mode-alist '("\\.flm$" . phf-flm-polymode))
