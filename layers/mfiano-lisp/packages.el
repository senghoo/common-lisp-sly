(defconst mfiano-lisp-packages
  '(slime sly evil-cleverparens cider))

(defun mfiano-lisp/post-init-slime ()
  (setq slime-lisp-implementations lisp-implementations
        common-lisp-hyperspec-root (expand-file-name
                                    "~/.data/common-lisp/clhs/")))

(defun mfiano-lisp/post-init-sly ()
  (setq sly-lisp-implementations lisp-implementations
        common-lisp-hyperspec-root (expand-file-name
                                    "~/.data/common-lisp/clhs/")))

(defun mfiano-lisp/pre-init-evil-cleverparens ()
  (spacemacs|use-package-add-hook evil-cleverparens
    :post-init
    (spacemacs/toggle-evil-safe-lisp-structural-editing-on-register-hooks)
    :post-config
    (setq evil-move-beyond-eol t
          evil-cleverparens-use-additional-movement-keys nil
          evil-cleverparens-use-additional-bindings nil)))

(defun mfiano-lisp/pre-init-cider ()
  (spacemacs|use-package-add-hook cider
    :post-config
    (evil-define-key '(normal insert) cider-repl-mode-map
      (kbd "<up>") 'cider-repl-previous-input
      (kbd "<down>") 'cider-repl-next-input)
    (setq cider-repl-wrap-history t
          cider-repl-display-help-banner nil
          cider-repl-pop-to-buffer-on-connect 'display-only
          cider-repl-history-size 1000
          cider-repl-history-file (expand-file-name "~/.data/cider/repl-history"))))
