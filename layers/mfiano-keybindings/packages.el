(defconst mfiano-keybindings-packages
  '(general))

(defun mfiano-keybindings/init-general ()
  (use-package general
    :config (general-evil-setup)))
