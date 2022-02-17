(add-to-list 'package-list 'elpy)
(add-to-list 'package-list 'blacken)
(add-to-list 'package-list 'flycheck)
(add-to-list 'package-list 'py-autopep8)
(install-missing)

(require 'elpy)

;; ====================================
;; Development Setup
;; ====================================

;; Enable elpy
(elpy-enable)

;; Enable Flycheck
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; Enable autopep8
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
