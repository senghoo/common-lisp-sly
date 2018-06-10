(configuration-layer/declare-layers
 '(git
   (github :variables
           gist-view-gist t
           magit-repository-directories '("~/Projects/")
           magit-repository-directories-depth 5)
   (version-control :variables
                    version-control-diff-tool 'diff-hl
                    version-control-diff-side 'left
                    version-control-global-margin t)))
