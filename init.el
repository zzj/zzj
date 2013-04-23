(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(starter-kit starter-kit-lisp starter-kit-bindings)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(setenv "PATH" (concat "/opt/local/bin" path-separator (getenv "PATH")))
(setenv "PATH" (concat "/opt/local/sbin" path-separator (getenv "PATH")))
(add-hook 'LaTeX-mode-hook 'TeX-source-correlate-mode)

(setq TeX-source-correlate-method 'synctex)

(add-hook 'LaTeX-mode-hook
      (lambda()
        (add-to-list 'TeX-expand-list
             '("%q" skim-make-url))))

(defun skim-make-url () (concat
        (TeX-current-line)
        " "
        (expand-file-name (funcall file (TeX-output-extension) t)
            (file-name-directory (TeX-master-file)))
        " "
        (buffer-file-name)))

(setq TeX-view-program-list
  '(("Skim" "/Applications/Skim.app/Contents/SharedSupport/displayline %q")))

(setq TeX-view-program-selection '((output-pdf "Skim")))

(require 'switch-window)

(eval-after-load "magit"
   '(set-face-attribute 'magit-item-highlight nil :foreground "#ffffff" :background "#3f4747"))
