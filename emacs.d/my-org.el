;;; ORG Mode
(require 'org)
;; (require 'ox-bibtex)

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-log-done 'time)
(setq org-log-done 'note)
(setq org-todo-keywords
  '((sequence "TODO" "IN-PROGRESS" "|" "DONE" "NOT-APPLICABLE")))

(setq org-latex-pdf-process
    '("latexmk -bibtex -pdf -gg %f"))

(electric-pair-mode 1)

(defvar org-electric-pairs
  '((?$ . ?$)) "Electric pairs for org-mode.")

(defun org-add-electric-pairs ()
  (setq-local electric-pair-pairs (append electric-pair-pairs org-electric-pairs))
  (setq-local electric-pair-text-pairs electric-pair-pairs))

(add-hook 'org-mode-hook 'org-add-electric-pairs)

(defun open-latexmk-daemon ()
  "Opens a latexmk daemon which monitors changes in the tex file"
  (interactive)
  (async-shell-command
   (concat
    "latexmk -pvc -bibtex -pdf -view=none "
    (file-name-sans-extension buffer-file-name)
    ".tex")))

(setq bibtex-completion-pdf-open-function
  (lambda (fpath)
    (start-process "open" "*open*" "open" fpath)))

;; PDFs visited in Org-mode are opened in Evince and HTML wit firefox
(add-hook 'org-mode-hook
	  '(lambda ()
	     (setq org-file-apps
		   '((auto-mode . emacs)
		     ("\\.mm\\'" . default)
		     ("\\.x?html?\\'" . "firefox %s")
		     ("\\.pdf\\'" . "evince %s")))))

(add-to-list 'ispell-skip-region-alist '(":\\(PROPERTIES\\|LOGBOOK\\):" . ":END:"))
(add-to-list 'ispell-skip-region-alist '("#\\+BEGIN_SRC" . "#\\+END_SRC"))


(global-set-key (kbd "C-¤ L") '(lambda () (interactive) (insert "$\\Leftrightarrow$")))
(global-set-key (kbd "C-¤ r") '(lambda () (interactive) (insert "$\\Rightarrow$")))
