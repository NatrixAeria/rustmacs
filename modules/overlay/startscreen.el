(let ((buf "splashscreen"))
  (generate-new-buffer buf)
  (set-buffer buf)
  (insert "Startup Page")
  (read-only-mode 1)
  (switch-to-buffer buf)
  )

