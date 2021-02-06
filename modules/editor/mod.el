(setq-default
  ;; disable auto creation of lockfiles
  create-lockfiles nil
  ;; disable auto-save
  auto-save-default nil
  ;; disable auto-wrapping
  ;; alternatively the column where to wrap
  fill-column nil
  ;; disable hard tabs
  indent-tabs-mode nil
  ;; Allow commands to be run on minibuffers.
  enable-recursive-minibuffers t
  )

;; Delete trailing whitespace when a file is saved.
(add-hook 'before-save-hook 'delete-trailing-whitespace)
