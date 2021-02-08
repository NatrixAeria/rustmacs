(defvar overlay/posframe-bg 'widget-field)

(defun overlay/posframe-handler (info)
  (cons (/ (- (plist-get info :parent-frame-width)
              (plist-get info :posframe-width))
           2)
        (/ (- (plist-get info :parent-frame-height)
              (plist-get info :posframe-height))
           8)))

(defun ivy-posframe--display (str &optional poshandler)
  "Show STR in ivy's posframe with POSHANDLER."
  (if (not (posframe-workable-p))
      (ivy-display-function-fallback str)
    (with-ivy-window
      (apply #'posframe-show
             ivy-posframe-buffer
             :font ivy-posframe-font
             :string str
             :position (point)
             :poshandler poshandler
             :background-color (face-attribute overlay/posframe-bg :background nil t)
             :foreground-color (face-attribute overlay/posframe-bg :foreground nil t)
             :internal-border-width 30
             :internal-border-color (face-attribute overlay/posframe-bg :background nil t)
             ;; see https://www.gnu.org/software/emacs/manual/html_node/elisp/Layout-Parameters.html#Layout-Parameters
             :override-parameters `((min-width . 70)
                                    (min-height . ,ivy-height)
                                    (border-color . "red")
                                    (border-width . 100)
                                    )
             (funcall ivy-posframe-size-function))
      (ivy-posframe--add-prompt 'ignore)))
  (with-current-buffer ivy-posframe-buffer
    (setq-local truncate-lines ivy-truncate-lines)))


(defun overlay/frame-near-center (str)
  (ivy-posframe--display str #'overlay/posframe-handler))
(setq ivy-posframe-display-functions-alist '((t . overlay/frame-near-center)))
;; swiper, complete-symbol, counsel-M-x
(ivy-posframe-mode 1)
(ivy-rich-mode 1)
(which-key-mode)
