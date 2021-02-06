(setq-default
  ;; Don't use the compiled code if its the older package.
  load-prefer-newer t

  ;; Do not put 'customize' config in init.el; give it another file.
  custom-file "~/.emacs.d/custom/custom.el"
  )
