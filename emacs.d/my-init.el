(require 'iso-transl)

;; For loading initialization files from places
(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")))

(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

;; (load-user-file "personal.el")


;; My preferences
(add-to-list 'default-frame-alist '(foreground-color . "black"))
(add-to-list 'default-frame-alist '(background-color . "floralwhite"))
(set-face-attribute 'region nil :background "#ccc")

(global-set-key '[f6] 'tabify)
(global-set-key '[f7] 'untabify)
(global-set-key '[f8] 'goto-line)
(global-set-key '[f9] 'revert-buffer)
(global-set-key '[f10] 'linum-mode)
(global-set-key '[f11] 'undo)
(global-set-key '[f12] 'auto-fill-mode)

(global-visual-line-mode 1)				; Proper line wrapping
(global-hl-line-mode 1)					; Highlight current row
(show-paren-mode 1)					; Matches parentheses and such in every mode
(set-fringe-mode '(0 . 0))				; Disable fringe because I use visual-line-mode
(set-face-background hl-line-face "#f2f1f0")		; Same color as greyness in gtk
(setq inhibit-splash-screen t)				; Disable splash screen
(setq visible-bell t)					; Flashes on error
(setq calendar-week-start-day 1)			; Calender should start on Monday
;; (add-to-list 'default-frame-alist '(height . 59))	; Default frame height.
(global-set-key (kbd "<S-dead-grave>") "`")

; Make Emacs UTF-8 compatible for both display and editing:
(prefer-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

(load "my-packages")
(load "my-auctex")
(load "my-org")
(load "my-python")

(tool-bar-mode 1)
(menu-bar-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (auctex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
