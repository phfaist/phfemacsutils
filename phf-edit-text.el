

(defun phf-edit-text-faceattrs (size)
  (if (eq window-system 'ns)
      ;; Mac OS X
      (list ':family '"Minion Pro"
        ':height (nth (- size 1) '(
                                   180 ; size == 1
                                   220 ; size == 2
                                   240 ; size == 3
                                   260 ; size == 4
                                   300 ; size == 5
                                   )))
    ;; Other systems -- use Crimson instead
    (list ':family '"Crimson"
      ':height (nth (- size 1) '(
                                 180 ; size == 1
                                 220 ; size == 2
                                 240 ; size == 3
                                 260 ; size == 4
                                 300 ; size == 5
                                 ))))
  )

(defun phf-edit-text-vfcw (size)
  (if (eq window-system 'ns)
      ;; Mac OS X
      (nth (- size 1) '(
                        90 ; size == 1
                        100 ; size == 2
                        115 ; size == 3
                        125 ; size == 4
                        140 ; size == 5
                        ))
    ;; Other systems
    (nth (- size 1) '(
                      90 ; size == 1
                      110 ; size == 2
                      130 ; size == 3
                      150 ; size == 4
                      180 ; size == 5
                      ))
    )
  )


;; PhF: shortcuts for text editing.
(defun phf-edit-text (size)
  (interactive "P") ; accept a prefix argument for "size"
  (setq size (if size
                 (prefix-numeric-value size) ; get prefix value
               2)  ; defaults to size=2 if no prefix
        )
  (if (eq size 0)
      ; disable text mode
      (progn
        (visual-line-mode -1)
        (visual-fill-column-mode -1)
        (buffer-face-mode -1))
    ; else, enable text mode at the requested size 
    (progn
      ; first disable the buffer mode so we can set the face
      (buffer-face-mode -1)
      (visual-fill-column-mode -1) ; so we can set visual-fill-column-width
      (setq buffer-face-mode-face (phf-edit-text-faceattrs size))
      (setq visual-fill-column-width (phf-edit-text-vfcw size))
      ; enable buffer mode, visual line and fill-column mode
      (buffer-face-mode)
      (visual-fill-column-mode 1)
      (visual-line-mode 1)
      )
    ) ; if
  ) ; defun
