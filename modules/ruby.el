(defun init-ruby ()
  (message "Initialize ruby module")
  ;; Rake files are ruby, too, as are gemspecs, rackup files, and gemfiles.
  (use-package enh-ruby-mode
    :interpreter "ruby"
    :defer 2
    :mode ("\\.rake\\'" . enh-ruby-mode)
    :mode ("Rakefile\\'" . enh-ruby-mode)
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

    :init
    (add-hook 'after-init-hook 'inf-ruby-switch-setup)
    :config
    (defun init-minor-ruby-mode
	(use-package inf-ruby
	  :config
	  (inf-ruby-minor-mode +1))
      )

    (add-hook 'enh-ruby-mode-hook 'init-minor-ruby-mode)
    (subword-mode +1))
  (use-package rvm
    :init
    (rvm-activate-corresponding-ruby)))

(init-ruby)

(provide 'ruby)
