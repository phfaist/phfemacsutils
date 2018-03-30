

(defun phf-edit-text-faceattrs (size)
  (cond ( (eq size 1)
          (message "phf-edit-text 1")
          '(:family "Minion Pro" :height 180)
          )
        ( (eq size 2)
          (message "phf-edit-text 2")
          '(:family "Minion Pro" :height 220)
          )
        ( (eq size 3)
          (message "phf-edit-text 3")
          '(:family "Minion Pro" :height 240)
          )
        ( (eq size 4)
          (message "phf-edit-text 4")
          '(:family "Minion Pro" :height 260)
          )
        ( (eq size 5)
          (message "phf-edit-text 5")
          '(:family "Minion Pro" :height 300)
          )
        ( t
          (error "Bad size for phf-edit-text") )
        )
  )

(defun phf-edit-text-vfcw (size)
  (cond ( (eq size 1)
          90
          )
        ( (eq size 2)
          100
          )
        ( (eq size 3)
          115
          )
        ( (eq size 4)
          125
          )
        ( (eq size 5)
          140
          )
        ( t
          (error "Bad size for phf-edit-text")
          )
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
