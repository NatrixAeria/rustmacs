(with-eval-after-load 'treemacs
          (add-hook 'treemacs-mode-hook (lambda () (treemacs-load-theme 'all-the-icons))))

(setq treemacs-collapse-dirs           (if treemacs-python-executable 3 0)
      treemacs-missing-project-action  'remove
      treemacs-sorting                 'alphabetic-asc
      treemacs-follow-after-init       t
      treemacs-width                   30
      treemacs-no-png-images           nil

      treemacs-follow-mode             t
      treemacs-filewatch-mode          t
      treemacs-git-mode                'simple)

;(treemacs-modify-theme "Default"
;  :config
;  (progn
;    (treemacs-create-icon :file "root-open.png"   :fallback ""       :extensions (root-open))
;    (treemacs-create-icon :file "root-closed.png" :fallback ""       :extensions (root-closed))
;    (treemacs-create-icon :file "emacs.png"       :fallback "🗏 "     :extensions ("el" "elc"))
;    (treemacs-create-icon :file "readme.png"      :fallback "🗏 "     :extensions ("readme.md"))
;    (treemacs-create-icon :icon (all-the-icons-icon-for-file "yaml") :extensions ("yml" "yaml"))))
