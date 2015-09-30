;;; ruby.el --- Module to configure ruby
;;; Commentary:
;;; Code:
(defun init-ruby ()
  (message "Initialize ruby module")

  (use-package yaml-mode
	:mode( "\\.yml$" . yaml-mode))

  (use-package feature-mode
	:mode ("\\.feature$" . feature-mode))
  ;; Rake files are ruby, too, as are gemspecs, rackup files, and gemfiles.
  (use-package robe
	:config
	(add-hook 'robe-mode-hook 'ac-robe-setup)
	)
  (use-package enh-ruby-mode
	:interpreter "ruby"
	:defer 2
	:mode ("\\.rake\\'" . enh-ruby-mode)
	:mode ("\\Rakefile\\'" . enh-ruby-mode)
	:mode ("\\.gemspec\\'" . enh-ruby-mode)
	:mode ("\\.ru\\'" . enh-ruby-mode)
	:mode ("Gemfile\\'" . enh-ruby-mode)
	:mode ("Guardfile\\'" . enh-ruby-mode)
	:mode ("Capfile\\'" . enh-ruby-mode)
	:mode ("\\.thor\\'" . enh-ruby-mode)
	:mode ("\\.rabl\\'" . enh-ruby-mode)
	:mode ("Thorfile\\'" . enh-ruby-mode)
	:mode ("Vagrantfile\\'" . enh-ruby-mode)
	:mode ("\\.jbuilder\\'" . enh-ruby-mode)
	:mode ("Podfile\\'" . enh-ruby-mode)
	:mode ("\\.podspec\\'" . enh-ruby-mode)
	:mode ("Puppetfile\\'" . enh-ruby-mode)
	:mode ("Berksfile\\'" . enh-ruby-mode)
	:mode ("Appraisals\\'" . enh-ruby-mode)
	:mode ("\\.rb\\'" . enh-ruby-mode)
	:config
	(message "enh ruby-mode")
	(progn
	  (use-package rbenv
		:init
		(progn
		  (setq
		   rbenv-modeline-function 'rbenv--modeline-plain
		   rbenv-show-active-ruby-in-modeline nil)
		  (global-rbenv-mode))))
	(setq ruby-deep-indent-paren nil)
	(add-hook 'ruby-mode-hook 'rbenv-use-corresponding)
	(add-hook 'enh-ruby-mode-hook 'robe-mode)
	(add-hook 'enh-ruby-mode-hook 'robe-start)
	(auto-complete-mode +1)
	(global-auto-complete-mode +1)
	))
(init-ruby)

(provide 'ruby-config)
;;; ruby.el ends here
