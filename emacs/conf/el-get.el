(add-to-list 'load-path (mk9/concat-extensions-directory "el-get"))
(require 'el-get)
(setq el-get-byte-compile nil)
(add-to-list 'el-get-recipe-path "~/emacs/conf/el-get-recipes")
(setq el-get-my-packages '(magit window-numbering smex js2-mode indent-guide
				 json-mode twittering-mode
				 jazz-theme mac-classic-theme
				 json-mode auto-complete php-mode scss-mode
				 paredit vala-mode tern markdown-mode go-mode
				 go-autocomplete flycheck magit-svn
				 yasnippet protobuf-mode
				 ))
(el-get 'sync el-get-my-packages)
