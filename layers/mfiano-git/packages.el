(defconst mfiano-git-packages
  '(magit
    popwin))

(defun mfiano-git/pre-init-popwin ()
  (spacemacs|use-package-add-hook magit
    :post-config
    (push '(magit-status-mode :width 0.5 :position right :stick t) popwin:special-display-config)))

(defun mfiano-git/pre-init-magit ()
  (spacemacs|use-package-add-hook magit
    :post-config
    (magit-wip-after-apply-mode)
    (magit-wip-after-save-mode)))
