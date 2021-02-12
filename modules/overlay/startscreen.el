(generate-new-buffer "Splashscreen")

(defvar startscreen-window (selected-window) "\
The window on which the start screen is displayed.
This is needed to determine its width.")

(defgroup startscreen nil
  "Configure the screen shown at startup"
  :group 'environment)

(defcustom startscreen-title "< R U S T M A C S >" "\
The title at the startscreen.
It is displayed right beneath the logo."
  :type 'string
  :group 'startscreen)

(defcustom startscreen-sub-title "rust is better than you" "\
The sub-title at the startscreen.
It is displayed right beneath the title."
  :type 'string
  :group 'startscreen)

(defcustom startscreen-logo (concat user-emacs-directory "assets/logo.png") "\
The path of the logo at the startscreen.
It is displayed right above the title."
  :type 'string
  :group 'startscreen)

;; TODO make this property unnecessary
(defcustom startscreen-logo-width 400
  "The width in pixels of the logo at the startscreen."
  :type 'integer
  :group 'startscreen)

(defun startscreen/insert-text (text &optional size color)
  (let ((size (if size size 1.0)))
    (insert (apply 'concat (make-list (truncate (/ (- (window-total-width startscreen-window) (* size (length text))) 2)) " ")))
    (let ((start (point)))
      (insert text)
      (add-text-properties start (point) `(face ,(list color :height size)))
      )
    (insert "\n")
  ))

(defun startscreen/insert-image (path width margin)
  (let ((ppp (/ (- (window-body-width startscreen-window t) width) 2)))
  (let
    ((start (point))
      (image (create-image path nil nil
        ;; margin in pixels
        :margin (cons ppp margin)
      ))
    )
    (insert " ")
    (add-text-properties start (point) `(display ,(list image)))
    ))
  (insert "\n")
  )

(defun resize-hook (&optional _)
  (set-buffer "Splashscreen")
  (setq buffer-read-only nil)
  (kill-all-local-variables)
  (remove-overlays)
  (erase-buffer)
  (turn-on-iimage-mode)
  (startscreen/insert-image startscreen-logo startscreen-logo-width 10)
  (startscreen/insert-text startscreen-title 1.8 font-lock-warning-face)
  (startscreen/insert-text startscreen-sub-title 0.9 font-lock-warning-face)
  (insert "\n")
  (startscreen/insert-text (concat (number-to-string (length package-activated-list)) " packages loaded") 0.9 font-lock-comment-face)
  (setq buffer-read-only t)
  )

(add-hook 'window-state-change-functions 'resize-hook)
(resize-hook)

(switch-to-buffer "Splashscreen")
