(defmacro mk9/concat-extensions-directory (&rest args)
  `(concat (file-name-as-directory "~/code/emacs-extensions") ,@args))

(defun mk9/load-local-config (suffix)
  (let* ((idx (string-match "\\." system-name))
	 (sname (if idx
		    (substring system-name 0 idx)
		  system-name))
	 (fname (concat "~/emacs/conf/local-" sname "-" suffix ".el")))
    (when (file-exists-p fname)
      (load fname))))

(mk9/load-local-config "pre")

(load "~/emacs/conf/cedet")
(load "~/emacs/conf/ecb")
(load "~/emacs/conf/el-get")
(load "~/emacs/conf/common")
(load "~/emacs/conf/visual")

(load "~/emacs/conf/git")
(load "~/emacs/conf/indent-guide")
(load "~/emacs/conf/window-numbering")
(load "~/emacs/conf/javascript")
(load "~/emacs/conf/twittering-mode")
(load "~/emacs/conf/gnus")
(load "~/emacs/conf/autocomplete")
;(load "~/emacs/conf/company")
(load "~/emacs/conf/html")
(load "~/emacs/conf/text")
(load "~/emacs/conf/tramp")
(load "~/emacs/conf/elisp")
(load "~/emacs/conf/css")
(load "~/emacs/conf/auto-save")
(load "~/emacs/conf/go")
(load "~/emacs/conf/spell")

(mk9/load-local-config "post")
