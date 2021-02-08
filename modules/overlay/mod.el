(load-theme 'kaolin-temple)

;; enable mouse support on terminal
(xterm-mouse-mode 1)

;; disable help page at startup
(setq inhibit-startup-message t)

;; disable ugly toolbar (insert delete copy ...)
(tool-bar-mode -1)

;; disable the only sometimes useful but ugly menu bar
(menu-bar-mode -1)

;; disable the scroll bar
(scroll-bar-mode -1)

;; make current line visible
(global-hl-line-mode t)

;; Change all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;; font
(add-to-list 'default-frame-alist '(font . "Hack-10" ))

;; mod.el directory
(let ((dir (file-name-directory load-file-name)))
  (load-file (concat dir "font-lock+.el"))
  ;; ivy-posframe
  (load-file (concat dir "posframe.el"))
  ;; startscreen
  (load-file (concat dir "startscreen.el"))
  ;; ivy-posframe
  (load-file (concat dir "treemacs.el"))
  )
