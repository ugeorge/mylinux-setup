(add-to-list 'package-list 'elpy)
(add-to-list 'package-list 'blacken)
(install-missing)

(require 'better-defaults)
(require 'elpy)

;; ====================================
;; Development Setup
;; ====================================
;; Enable elpy
(elpy-enable)
