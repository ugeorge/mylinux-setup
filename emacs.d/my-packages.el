
;;; Repos
(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(add-to-list 'load-path "~/.emacs.d/site-lisp/")

; list the packages you want
(setq package-list '(flycheck magit) )

; activate all the packages
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(defun install-missing ()
  (dolist (package package-list)
    (unless (package-installed-p package)
      (package-install package)))
  )

