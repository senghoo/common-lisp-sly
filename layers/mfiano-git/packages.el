(defconst mfiano-git-packages
  '(magit
    (magithub :requires (magit))))

(defun mfiano-git/pre-init-magit ()
  (spacemacs|use-package-add-hook magit
    :post-config
    (magit-wip-after-apply-mode)
    (magit-wip-after-save-mode)))

(defun mfiano-git/init-magithub ()
  (use-package magithub
    :after magit
    :config (magithub-feature-autoinject t)))
