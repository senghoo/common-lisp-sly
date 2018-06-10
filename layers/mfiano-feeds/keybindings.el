(spacemacs|define-transient-state mfiano-feeds
  :doc
  "
Tags^^                          Filter^^            Toggle^^
----^^-----------------------   ------^^----------  ------^^------------
[_te_]  Tagged a  'emacs'       [_a_] Show all      [_*_] Toggle starred
[_tl_]  Tagged as 'lisp'        [_u_] Show unread
[_tc_]  Tagged as 'commonlisp'  [_d_] Show today
^^                              [_s_] Show starred
^^
[_q_] quit
"
  :foreign-keys run
  :bindings
  ("a" (elfeed-search-set-filter "@6-months-ago"))
  ("u" (elfeed-search-set-filter "@6-months-ago +unread"))
  ("d" (elfeed-search-set-filter "@1-day-ago"))
  ("s" (elfeed-search-set-filter "@6-months-ago +starred"))
  ("te" (elfeed-search-set-filter "@6-months-ago +emacs"))
  ("tl" (elfeed-search-set-filter "@6-months-ago +lisp"))
  ("tc" (elfeed-search-set-filter "@6-months-ago +commonlisp"))
  ("*" (elfeed-toggle-star))
  ("q" nil :exit t))
