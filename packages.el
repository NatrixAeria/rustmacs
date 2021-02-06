(use-package amx
  :ensure t
  :config
  (amx-mode)
  )
(use-package ivy
  :ensure t
  :config
  (ivy-mode)
  )

(use-package molokai-theme)
(use-package rebecca-theme)
(use-package obsidian-theme)
(use-package obsidian-theme)
(use-package kaolin-themes)
(use-package gruvbox-theme)
(use-package doom-themes)


(use-package company
  :bind (:map company-active-map
         ("C-n" . company-select-next)
         ("C-p" . company-select-previous))
  :config
  (setq company-idle-delay 0.3)
  (global-company-mode t)
  )


(use-package helm
  :bind (
         ("M-<f5>" . helm-find-files)
         ([f10] . helm-buffers-list)
         ([S-f10] . helm-recentf)))

(use-package flycheck
  :ensure t
  )

(use-package lsp-mode
  :ensure t
  )

(use-package rustic
  :ensure t
  )

(use-package cargo
  :ensure t
  )

(use-package fuz
  :ensure t
  )
