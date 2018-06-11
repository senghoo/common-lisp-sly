(defconst mfiano-git-packages
  '(magit))

(defun mfiano-git/pre-init-magit ()
  (spacemacs|use-package-add-hook magit
    :post-config
    (magit-wip-after-apply-mode)
    (magit-wip-after-save-mode)))
