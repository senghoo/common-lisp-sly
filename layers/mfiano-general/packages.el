(defconst mfiano-general-packages
  '(fill-column-indicator
    avy
    magit
    helm-ag
    org
    aggressive-indent
    (sp-hungry-delete :location local)
    rainbow-delimiters))

(defun mfiano-general/post-init-fill-column-indicator ()
  (setq fci-rule-color "#444"
        fci-rule-use-dashes t
        fci-dash-pattern 0.5)
  (add-hook 'prog-mode-hook 'fci-mode))

(defun mfiano-general/post-init-avy ()
  (setq avy-all-windows 'all-frames))

(defun mfiano-general/post-init-magit ()
  (global-git-commit-mode 1))

(defun mfiano-general/pre-init-helm-ag ()
  (spacemacs|use-package-add-hook helm-ag
    :post-init
    (spacemacs/set-leader-keys "sp" 'helm-ag-project-root)
    :post-config
    (setq helm-ag-base-command "rg --vimgrep --smart-case --no-heading")))

(defun mfiano-general/post-init-org ()
  (setq org-startup-indented t))

(defun mfiano-general/post-init-company ()
  (spacemacs|use-package-add-hook company
    :post-init
    (add-hook 'prog-mode-hook 'company-mode)
    :post-config
    (company-tng-configure-default)
    (setq company-idle-delay 0
          completion-at-point-functions '(company-complete-common))))

(defun mfiano-general/post-init-aggressive-indent ()
  (add-hook 'prog-mode-hook (lambda () (aggressive-indent-mode 1))))

(defun mfiano-general/init-sp-hungry-delete ()
  (use-package sp-hungry-delete
    :config
    (with-eval-after-load 'smartparens
      (spacemacs/add-to-hooks 'sp-hungry-delete-mode '(smartparens-enabled-hook)))))

(defun mfiano-general/post-init-rainbow-delimiters ()
  (with-eval-after-load 'rainbow-delimiters
    (cl-loop with colors = '("#ff4b4b" "#5fafd7")
             for index from 1 to rainbow-delimiters-max-face-count
             do (set-face-foreground
                 (intern (format "rainbow-delimiters-depth-%d-face" index))
                 (elt colors (cl-rem index 2))))
    (set-face-attribute 'rainbow-delimiters-unmatched-face nil
                        :foreground 'unspecified
                        :inherit 'show-paren-mismatch)))
