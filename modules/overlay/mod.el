(load-theme 'kaolin-temple)

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
(add-to-list 'default-frame-alist '(font . "Hack-11" ))

(load-file (concat (file-name-directory load-file-name) "startscreen.el"))
