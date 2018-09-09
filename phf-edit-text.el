


(defun phf-edit-text-load-preset-settings (preset)
  (message '"loading phf-edit-text preset %d" preset)
  (eval (nth
   (- preset 1)
   '(
     (progn ; preset=1: simple edit text with Merriweather font
       (setq buffer-face-mode-face
             (list ':family '"Merriweather"
                   ':height (if (eq window-system 'ns) 180 160) ))
       (setq visual-fill-column-width (if (eq window-system 'ns) 90 120))
       (setq line-spacing 0.5))
     (progn ; preset=2: simple edit text with Minion Pro or such font
       (setq buffer-face-mode-face
             (list ':family (if (eq window-system 'ns) '"Minion Pro" '"Source Serif Pro")
                   ':height (if (eq window-system 'ns) '200 '160) ))
       (setq visual-fill-column-width (if (eq window-system 'ns) 90 110))
       (setq line-spacing 0.15))
     (progn ; preset=3: simple edit text with IBM Plex Sans
       (setq buffer-face-mode-face
             (list ':family '"IBM Plex Sans"
                   ':height (if (eq window-system 'ns) '180 '160) ))
       (setq visual-fill-column-width (if (eq window-system 'ns) 90 110))
       (setq line-spacing 0.15))
     (progn ; preset=4: simple edit text with IBM Plex Serif
       (setq buffer-face-mode-face
             (list ':family '"IBM Plex Serif"
                   ':height (if (eq window-system 'ns) '180 '160) ))
       (setq visual-fill-column-width (if (eq window-system 'ns) 90 110))
       (setq line-spacing 0.15))
     (progn ; preset=5: simple edit text with TeX Gyre Heros
       (setq buffer-face-mode-face
             (list ':family '"TeX Gyre Heros"
                   ':height (if (eq window-system 'ns) '180 '160) ))
       (setq visual-fill-column-width (if (eq window-system 'ns) 90 110))
       (setq line-spacing nil))
     ))))

;; PhF: shortcuts for text editing.
(defun phf-edit-text (arg)
  (interactive "P") ; accept a prefix argument for "size"
  (setq preset (if arg
                 (prefix-numeric-value arg) ; get prefix value
               1)  ; defaults to preset=1 if no prefix
        )
  (if (eq preset 0)
      (progn ; disable text mode
        (visual-line-mode -1)
        (visual-fill-column-mode -1)
        (buffer-face-mode -1)
        (setq line-spacing nil))
    (progn ; enable phf text mode
      ; first disable the buffer mode so we can set the face
      (buffer-face-mode -1)
      (visual-fill-column-mode -1) ; so we can set visual-fill-column-width
      (phf-edit-text-load-preset-settings preset)
      ; enable buffer mode, visual line and fill-column mode
      (buffer-face-mode)
      (visual-fill-column-mode 1)
      (visual-line-mode 1)
      (electric-indent-mode -1) ; never enable electric-indent-mode. Why does it get auto-enabled all the time?!?
      )))
