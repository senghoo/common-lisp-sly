(defun dotspacemacs/layers ()
  (setq-default dotspacemacs-distribution 'spacemacs
                dotspacemacs-enable-lazy-installation nil
                dotspacemacs-configuration-layers
                '((auto-completion
                   :variables
                   auto-completion-return-key-behavior 'complete
                   auto-completion-tab-key-behavior 'cycle
                   auto-completion-enable-sort-by-usage t
                   auto-completion-idle-delay nil
                   auto-completion-enable-snippets-in-popup t
                   auto-completion-enable-help-tooltip 'manual)
                  (haskell
                   :variables
                   haskell-completion-backend 'intero
                   haskell-enable-hindent-style "johan-tibell"
                   haskell-process-type 'stack-ghci)
                  helm
                  html
                  markdown
                  mfiano-feeds
                  mfiano-general
                  mfiano-git
                  mfiano-keybindings
                  mfiano-lisp
                  mfiano-org
                  (shell :variables shell-default-shell 'eshell)
                  shell-scripts
                  syntax-checking)
                dotspacemacs-excluded-packages '(vi-tilde-fringe evil-escape)
                dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  (setq-default
   dotspacemacs-elpa-https t
   dotspacemacs-elpa-timeout 5
   dotspacemacs-gc-cons '(100000000 0.1)
   dotspacemacs-use-spacelpa nil
   dotspacemacs-verify-spacelpa-archives nil
   dotspacemacs-check-for-update t
   dotspacemacs-elpa-subdirectory nil
   dotspacemacs-editing-style 'vim
   dotspacemacs-verbose-loading nil
   dotspacemacs-startup-banner 'official
   dotspacemacs-startup-lists '((recents . 10)
                                (projects . 10))
   dotspacemacs-startup-buffer-responsive t
   dotspacemacs-scratch-mode 'lisp-mode
   dotspacemacs-initial-scratch-message nil
   dotspacemacs-themes '(spacemacs-dark)
   dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.5)
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font '("Iosevka Slab"
                               :size 14
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-command-key "SPC"
   dotspacemacs-ex-command-key ";"
   dotspacemacs-emacs-leader-key "<f13>"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-distinguish-gui-tab nil
   dotspacemacs-remap-Y-to-y$ nil
   dotspacemacs-retain-visual-state-on-shift t
   dotspacemacs-visual-line-move-text nil
   dotspacemacs-ex-substitute-global nil
   dotspacemacs-default-layout-name "Default"
   dotspacemacs-display-default-layout t
   dotspacemacs-auto-resume-layouts t
   dotspacemacs-large-file-size 1
   dotspacemacs-auto-save-file-location nil
   dotspacemacs-max-rollback-slots 5
   dotspacemacs-helm-resize t
   dotspacemacs-helm-no-header t
   dotspacemacs-helm-position 'bottom
   dotspacemacs-helm-use-fuzzy 'always
   dotspacemacs-enable-paste-transient-state t
   dotspacemacs-which-key-delay 0.2
   dotspacemacs-which-key-position 'bottom
   dotspacemacs-loading-progress-bar t
   dotspacemacs-maximized-at-startup t
   dotspacemacs-show-transient-state-title t
   dotspacemacs-show-transient-state-color-guide t
   dotspacemacs-mode-line-unicode-symbols t
   dotspacemacs-smooth-scrolling t
   dotspacemacs-line-numbers t
   dotspacemacs-folding-method 'evil
   dotspacemacs-smartparens-strict-mode t
   dotspacemacs-smart-closing-parenthesis t
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-enable-server t
   dotspacemacs-persistent-server t
   dotspacemacs-search-tools '("rg" "ag" "grep")
   dotspacemacs-default-package-repository nil
   dotspacemacs-whitespace-cleanup 'trailing))

(defun dotspacemacs/user-init ()
  (setq exec-path-from-shell-check-startup-files nil))

(defun dotspacemacs/user-config ()
  (company-tng-configure-default)
  (setq powerline-default-separator 'arrow)
  (setq-default fill-column 100))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (intero hlint-refactor hindent helm-hoogle haskell-snippets flycheck-pos-tip flycheck-haskell flycheck company-ghci company-ghc ghc haskell-mode company-cabal cmm-mode clojure-snippets clj-refactor inflections edn multiple-cursors peg cider-eval-sexp-fu cider seq queue clojure-mode org-mime ghub let-alist ac-sly org-category-capture general visual-fill-column web-mode tagedit slim-mode scss-mode sass-mode pug-mode less-css-mode insert-shebang helm-css-scss haml-mode git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter fish-mode emmet-mode diff-hl company-web web-completion-data company-shell smeargle orgit magit-gitflow magit-gh-pulls helm-gitignore gitignore-mode github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gist gh marshal logito pcache ht evil-magit magit magit-popup git-commit with-editor sly-repl-ansi-color sly-macrostep sly-mrepl sly-company sly evil-cleverparens paredit slime-company slime common-lisp-snippets elfeed-web simple-httpd elfeed-org elfeed-goodies ace-jump-mode noflet elfeed helm-company helm-c-yasnippet fuzzy company-statistics company-quickhelp pos-tip company auto-yasnippet yasnippet ac-ispell auto-complete xterm-color shell-pop multi-term eshell-z eshell-prompt-extras esh-help org-projectile org-present org-pomodoro alert log4e gntp org-download htmlize gnuplot ranger mmm-mode markdown-toc markdown-mode gh-md ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide hydra hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav dumb-jump f s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed dash aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async)))
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (yasnippet-snippets web-beautify symon string-inflection spaceline-all-the-icons all-the-icons memoize sayid password-generator overseer org-brain nameless magithub ghub+ apiwrap magit-svn impatient-mode hungry-delete helm-xref helm-purpose window-purpose imenu-list flycheck-bashate evil-org evil-lion evil-goggles editorconfig dante lcr counsel-projectile counsel swiper ivy clojure-cheatsheet centered-cursor-mode browse-at-remote font-lock+ intero hlint-refactor hindent helm-hoogle haskell-snippets flycheck-pos-tip flycheck-haskell flycheck company-ghci company-ghc ghc haskell-mode company-cabal cmm-mode clojure-snippets clj-refactor inflections edn multiple-cursors peg cider-eval-sexp-fu cider seq queue clojure-mode org-mime ghub let-alist ac-sly org-category-capture general visual-fill-column web-mode tagedit slim-mode scss-mode sass-mode pug-mode less-css-mode insert-shebang helm-css-scss haml-mode git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter fish-mode emmet-mode diff-hl company-web web-completion-data company-shell smeargle orgit magit-gitflow magit-gh-pulls helm-gitignore gitignore-mode github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gist gh marshal logito pcache ht evil-magit magit magit-popup git-commit with-editor sly-repl-ansi-color sly-macrostep sly-mrepl sly-company sly evil-cleverparens paredit slime-company slime common-lisp-snippets elfeed-web simple-httpd elfeed-org elfeed-goodies ace-jump-mode noflet elfeed helm-company helm-c-yasnippet fuzzy company-statistics company-quickhelp pos-tip company auto-yasnippet yasnippet ac-ispell auto-complete xterm-color shell-pop multi-term eshell-z eshell-prompt-extras esh-help org-projectile org-present org-pomodoro alert log4e gntp org-download htmlize gnuplot ranger mmm-mode markdown-toc markdown-mode gh-md ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide hydra hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav dumb-jump f s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed dash aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async)))
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)
