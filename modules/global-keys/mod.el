;; open treemacs
(defun toggle-treemacs ()
  (interactive)
  (let ((vis (treemacs-is-treemacs-window-selected\?)))
    (unless vis
      (let ((win (selected-window)))
        (treemacs)
        (select-window win)
        )
      )
    (when vis (treemacs))
    )
  )
(global-unset-key (kbd "C-t"))
(global-set-key (kbd "C-t") 'toggle-treemacs)

;; switch buffer
(global-unset-key (kbd "C-b"))
(global-set-key (kbd "C-b") 'switch-to-buffer)
