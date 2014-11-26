;do not show splash screen
(setq inhibit-startup-message t)

;set font size to 9pt
(set-face-attribute 'default nil :height 90)

;switch theme
(load-theme 'wombat)

;load haskell mode
(add-to-list 'load-path "/usr/share/emacs/site-list/haskell-mode/")
(load "haskell-mode-autoloads.el")
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)

