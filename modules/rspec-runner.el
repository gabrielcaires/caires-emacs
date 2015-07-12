(rspec-runner ()
  "A test runner"
  (interactive)
  (message
   (buffer-file-name)
   )
  (message (projectile-project-root))
  )
