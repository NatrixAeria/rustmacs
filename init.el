(defconst mydir (file-name-directory load-file-name))

(defun load-module (module)
  (load-file (concat (file-name-as-directory (concat (concat mydir "modules/") module)) "mod.el"))
  )

(load-module "config")
(load-file custom-file)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(package-initialize)
(eval-after-load 'gnutls
  '(add-to-list 'gnutls-trustfiles "/etc/ssl/cert.pem"))
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))
(require 'bind-key)
(setq use-package-always-ensure t)

;; MODULES - pre package
;; ========================
(load-module "clipboard")
(load-module "buffers")

;; PACKAGES
;; ========================

(load-file (concat mydir "packages.el"))

;; MODULES - post package
;; ========================
(load-module "overlay")
(load-module "global-keys")
