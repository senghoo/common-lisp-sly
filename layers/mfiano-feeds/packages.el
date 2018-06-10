(defconst mfiano-feeds-packages
  '(visual-fill-column
    (elfeed-goodies :excluded t)))

(defun mfiano-feeds/init-visual-fill-column ()
  (use-package visual-fill-column
    :config (setq visual-fill-column-width nil)))

(defun mfiano-feeds/post-init-elfeed ()
  (with-eval-after-load 'elfeed
    (defalias 'elfeed-toggle-star
      (elfeed-expose #'elfeed-search-toggle-all 'starred)))
  (add-hook 'elfeed-show-mode-hook 'visual-line-mode)
  (add-hook 'elfeed-show-mode-hook 'visual-fill-column-mode)
  (setq-default elfeed-search-filter "@1-month-ago +unread ")
  (setq url-queue-timeout 30
        elfeed-search-title-max-width 150
        elfeed-search-date-format '("%Y-%m-%d, %I:%M%P" 20 :left))
  (evil-define-key 'evilified elfeed-search-mode-map (kbd "f") 'spacemacs/mfiano-feeds-transient-state/body))
