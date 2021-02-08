(setq-default
  ;; disable auto creation of lockfiles
  create-lockfiles nil
  ;; disable auto-save
  auto-save-default nil
  ;; disable hard tabs
  indent-tabs-mode nil
  ;; Allow commands to be run on minibuffers.
  enable-recursive-minibuffers t
  )

(defcustom delete-trailing-whitespace-on-save t "\
non-nil enables auto-deletion of trailing
whitespace on save.")

;; Delete trailing whitespace when a file is saved if flag is set.
(add-hook 'before-save-hook (lambda () (when delete-trailing-whitespace-on-save (delete-trailing-whitespace))))
