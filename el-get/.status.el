((auto-compile status "installed" recipe
	       (:name auto-compile :type github :pkgname "tarsius/auto-compile" :description "Automatically compile Emacs Lisp libraries." :depends
		      (packed dash)))
 (auto-complete+ status "installed" recipe
		 (:name auto-complete+ :auto-generated t :type emacswiki :description "Auto complete plus" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/auto-complete+.el"))
 (color-theme status "installed" recipe
	      (:name color-theme :description "An Emacs-Lisp package with more than 50 color themes for your use. For questions about color-theme" :website "http://www.nongnu.org/color-theme/" :type http-tar :options
		     ("xzf")
		     :url "http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz" :load "color-theme.el" :features "color-theme" :post-init
		     (progn
		       (color-theme-initialize)
		       (setq color-theme-is-global t))))
 (color-theme-almost-monokai status "installed" recipe
			     (:name color-theme-almost-monokai :description "A beautiful, fruity, calm, yet dark color theme for Emacs." :type github :pkgname "lut4rp/almost-monokai" :depends color-theme :prepare
				    (autoload 'color-theme-almost-monokai "color-theme-almost-monokai" "color-theme: almost-monokai" t)))
 (color-theme-mac-classic status "installed" recipe
			  (:name color-theme-mac-classic :description "A emacs colour theme which resembles the TextMate Mac Classic colour theme." :type github :pkgname "jbw/color-theme-mac-classic" :depends color-theme :prepare
				 (autoload 'color-theme-mac-classic "color-theme-mac-classic" "color-theme: mac-classic" t)))
 (dash status "installed" recipe
       (:name dash :description "A modern list api for Emacs. No 'cl required." :type github :pkgname "magnars/dash.el"))
 (diff+ status "installed" recipe
	(:name diff+ :auto-generated t :type emacswiki :description "Extensions to `diff.el' for Emacs 21 and later." :website "https://raw.github.com/emacsmirror/emacswiki.org/master/diff+.el"))
 (diff+20 status "installed" recipe
	  (:name diff+20 :auto-generated t :type emacswiki :description "Extensions to `diff.el' for Emacs 20 or older." :website "https://raw.github.com/emacsmirror/emacswiki.org/master/diff+20.el"))
 (diff-git status "installed" recipe
	   (:name diff-git :website "https://github.com/alanfalloon/diff-git.el" :description "A small emacs extension for working with the git index from within diff-mode" :type github :pkgname "alanfalloon/diff-git.el"))
 (diff-mode- status "installed" recipe
	     (:name diff-mode- :auto-generated t :type emacswiki :description "Extensions to `diff-mode.el'." :website "https://raw.github.com/emacsmirror/emacswiki.org/master/diff-mode-.el"))
 (diffview status "installed" recipe
	   (:name diffview :description "View diffs in side-by-side format." :type github :pkgname "mgalgs/diffview-mode" :prepare
		  (progn
		    (autoload 'diffview-current "diffview" nil t)
		    (autoload 'diffview-region "diffview" nil t)
		    (autoload 'diffview-message "diffview" nil t))))
 (ediff+ status "installed" recipe
	 (:name ediff+ :auto-generated t :type emacswiki :description "Enhancements to Ediff" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/ediff+.el"))
 (el-get status "installed" recipe
	 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
		("el-get.*\\.el$" "methods/")
		:features el-get :post-init
		(when
		    (memq 'el-get
			  (bound-and-true-p package-activated-list))
		  (message "Deleting melpa bootstrap el-get")
		  (unless package--initialized
		    (package-initialize t))
		  (when
		      (package-installed-p 'el-get)
		    (let
			((feats
			  (delete-dups
			   (el-get-package-features
			    (el-get-elpa-package-directory 'el-get)))))
		      (el-get-elpa-delete-package 'el-get)
		      (dolist
			  (feat feats)
			(unload-feature feat t))))
		  (require 'el-get))))
 (git-emacs status "installed" recipe
	    (:name git-emacs :description "Yet another git emacs mode for newbies" :type github :pkgname "tsgates/git-emacs" :features git-emacs))
 (git-modes status "installed" recipe
	    (:name git-modes :description "GNU Emacs modes for various Git-related files" :type github :pkgname "magit/git-modes"))
 (markdown-mode status "installed" recipe
		(:name markdown-mode :description "Major mode to edit Markdown files in Emacs" :website "http://jblevins.org/projects/markdown-mode/" :type git :url "git://jblevins.org/git/markdown-mode.git" :prepare
		       (add-to-list 'auto-mode-alist
				    '("\\.\\(md\\|mdown\\|markdown\\)\\'" . markdown-mode))))
 (markdown-preview-mode status "installed" recipe
			(:name markdown-preview-mode :description "Markdown preview mode with websocket.el" :type github :depends
			       (websocket markdown-mode)
			       :website "https://github.com/ancane/markdown-preview-mode.git" :pkgname "ancane/markdown-preview-mode"))
 (packed status "installed" recipe
	 (:name packed :type github :pkgname "tarsius/packed" :description "Package manager agnostic Emacs Lisp package utilities"))
 (php-completion status "installed" recipe
		 (:name php-completion :auto-generated t :type emacswiki :description "-- complete everything PHP with Anything.el" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/php-completion.el"))
 (php-mode status "installed" recipe
	   (:name php-mode :description "A PHP mode for GNU Emacs " :type github :pkgname "ejmr/php-mode" :website "https://github.com/ejmr/php-mode"))
 (sql status "installed" recipe
      (:name sql :auto-generated t :type emacswiki :description "specialized comint.el for SQL interpreters" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/sql.el"))
 (sql-complete status "installed" recipe
	       (:name sql-complete :auto-generated t :type emacswiki :description "provide completion for tables and columns" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/sql-complete.el"))
 (ssh status "installed" recipe
      (:name ssh :website "http://www.splode.com/~friedman/software/emacs-lisp/#ssh" :description "This is a comint-based interface for connecting to remote hosts via ssh." :type http :url "http://www.splode.com/~friedman/software/emacs-lisp/src/ssh.el"))
 (sudo-ext status "installed" recipe
	   (:name sudo-ext :auto-generated t :type emacswiki :description "sudo support" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/sudo-ext.el"))
 (sudo-save status "installed" recipe
	    (:name sudo-save :description "Allow saving files using sudo" :type emacswiki :features sudo-save))
 (template-simple status "installed" recipe
		  (:name template-simple :auto-generated t :type emacswiki :description "Simple template functions and utils" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/template-simple.el"))
 (tramp status "installed" recipe
	(:name tramp :description "Transparent Remote Access, Multiple Protocols." :website "http://www.gnu.org/s/tramp/" :type git :url "git://git.savannah.gnu.org/tramp.git" :build
	       `(("autoconf")
		 ("./configure" ,(concat "--with-emacs=" el-get-emacs)
		  "--with-contrib" ,(concat "--prefix="
					    (expand-file-name
					     (el-get-package-directory "tramp"))))
		 ("make")
		 ("make" "install"))
	       :load-path
	       ("./lisp")
	       :autoloads
	       ("trampver.el" "tramp-loaddefs.el")
	       :prepare
	       (progn
		 (autoload 'tramp-check-proper-method-and-host "tramp.el"))
	       :info "share/info"))
 (websocket status "installed" recipe
	    (:name websocket :description "A websocket implementation in elisp, for emacs." :type github :pkgname "ahyatt/emacs-websocket"))
 (yaml-mode status "installed" recipe
	    (:name yaml-mode :description "Simple major mode to edit YAML file for emacs" :type github :pkgname "yoshiki/yaml-mode"))
 (yasnippet status "installed" recipe
	    (:name yasnippet :website "https://github.com/capitaomorte/yasnippet.git" :description "YASnippet is a template system for Emacs." :type github :pkgname "capitaomorte/yasnippet" :compile "yasnippet.el" :submodule nil :build
		   (("git" "submodule" "update" "--init" "--" "snippets")))))
