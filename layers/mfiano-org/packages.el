(defconst mfiano-org-packages
  '(org))

(defun mfiano-org/pre-init-org ()
  (spacemacs|use-package-add-hook org
    :post-config
    (setq org-directory (expand-file-name "dev/org" user-home-directory)
          org-default-notes-file (expand-file-name "notes.org" org-directory)
          org-catch-invisible-edits 'show-and-error
          org-startup-indented t
          org-startup-folded t
          org-ellipsis " […]"
          org-return-follows-link t
          org-src-fontify-natively t
          org-hide-emphasis-markers t
          org-src-preserve-indentation t
          org-todo-keywords '((sequence "TODO(t)" "INPROGRESS(i)" "|" "DONE(d)")
                              (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)")
                              (sequence "REPORTED(r@/!)" "BUG(b@/!)" "|" "FIXED(f@/!)"))
          org-todo-keyword-faces '(("TODO" :foreground "dodger blue" :weight bold)
                                   ("INPROGRESS" :foreground "sprint green" :weight bold)
                                   ("WAITING" :foreground "yellow" :weight bold)
                                   ("DONE" :foreground "forest green" :weight bold)
                                   ("CANCELLED" :foreground "forest green" :weight bold)
                                   ("REPORTED" :foreground "red" :weight bold)
                                   ("BUG" :foreground "red" :weight bold)
                                   ("FIXED" :foreground "forest green" :weight bold))
          org-capture-templates '(("t" "Task" entry (file org-default-notes-file)
                                   "* TODO %?\n:PROPERTIES:\n:CREATED: %U\n:END:\n")))))
