(general-imap
 "<S-insert>" 'mfiano-keybindings/yank-primary-selection
 "C-k" 'sp-kill-hybrid-sexp)

(general-define-key
 :states '(normal insert)
 [remap move-beginning-of-line] 'mfiano-keybindings/smarter-move-beginning-of-line)

(general-define-key
 :keymaps 'minibuffer-local-map
 "<S-insert>" 'mfiano-keybindings/yank-primary-selection)

(general-imap
 :keymaps 'smartparens-strict-mode-map
 "<M-up>" 'sp-backward-up-sexp
 "<M-down>" 'sp-up-sexp)

(general-define-key
 :keymaps '(emacs-lisp-mode-map lisp-mode-map sly-mode-map clojure-mode-map cider-repl-mode-map)
 "<tab>" 'company-indent-or-complete-common)
