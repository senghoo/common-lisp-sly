(setq user-full-name "Michael Fiano"
      user-mail-address "mail@michaelfiano.com"
      create-lockfiles nil
      mouse-wheel-scroll-amount '(3)
      mouse-wheel-progressive-speed nil
      mouse-wheel-follow-mouse t
      scroll-step 1
      vc-follow-symlinks t)
(display-time-mode 1)
(setq-default fill-column 100)
(spacemacs/set-leader-keys
  "<f13>" 'helm-M-x)
