
(require 'polymode)


;; (define-hostmode phf-llm-polymode-hostmode
;;   :mode 'latex-mode)

(define-innermode phf-llm-polymode-yamlfrontmatter-innermode
  :mode 'yaml-mode
  :head-matcher "\\\`[ \t\n]*---\n"  ;"\`[ \t\n]*---\n"
  :tail-matcher "^---\n"
  :head-mode 'host
  :tail-mode 'host)

(define-polymode phf-llm-polymode
  :hostmode 'poly-latex-hostmode
  :innermodes '(phf-llm-polymode-yamlfrontmatter-innermode ))


;; Custom extensions for major modes
(add-to-list 'auto-mode-alist '("\\.llm$" . phf-llm-polymode))
