;; CUSTOM SETTINGS OF EMACS VARIABLES BELOW
g
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ac-modes (quote (emacs-lisp-mode lisp-interaction-mode c-mode cc-mode c++-mode clojure-mode java-mode perl-mode cperl-mode python-mode ruby-mode ecmascript-mode javascript-mode js-mode js2-mode php-mode css-mode makefile-mode sh-mode fortran-mode f90-mode ada-mode xml-mode sgml-mode haml-mode sass-mode)))
 '(ac-quick-help-delay 1.0)
 '(face-font-family-alternatives (quote (("Inconsolata" "fixed") ("Monospace" "courier" "fixed") ("courier" "CMU Typewriter Text" "fixed") ("Sans Serif" "helv" "helvetica" "arial" "fixed") ("helv" "helvetica" "arial" "fixed"))))
 '(global-auto-complete-mode t)
 '(hscroll-margin 1)
 '(inhibit-startup-screen t)
 '(js-enabled-frameworks (quote (javascript)))
 '(js-indent-level 2)
 '(js-js-switch-tabs nil)
 '(js2-auto-indent-p t)
 '(js2-bounce-indent-p nil)
 '(mouse-wheel-scroll-amount (quote (1 ((shift) . 1) ((control)))))
 '(rails-ws:default-server-type "webrick")
 '(safe-local-variable-values (quote ((require-final-newline))))
 '(scroll-bar-mode nil)
 '(standard-indent 2)
 '(tabbar-background-color "black")
 '(tabbar-home-button (quote (("[o]") "[x]")))
 '(tabbar-mode t nil (tabbar))
 '(tabbar-mwheel-mode t nil (tabbar))
 '(tabbar-scroll-left-button (quote ((" <") " =")))
 '(tabbar-scroll-right-button (quote ((" >") " =")))
 '(tabbar-separator (quote ("  |  ")))
 '(tabbar-use-images nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#151515" :foreground "#E6E1DC" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 90 :width normal :foundry "unknown" :family "Inconsolata"))))
 '(button ((((supports :underline t)) (:underline t))))
 '(diff-added ((t (:inherit diff-changed))))
 '(diff-indicator-added ((t (:inherit diff-added :foreground "green"))))
 '(diff-indicator-removed ((t (:inherit diff-removed :foreground "red"))))
 '(diff-removed ((t (:inherit diff-changed))))
 '(egg-header ((t (:inherit variable-pitch :weight bold :height 1.1))))
 '(egg-help-header-1 ((t (:inherit egg-text-base :weight bold :family "Inconsolata"))))
 '(egg-text-base ((((class color) (background dark)) (:inherit variable-pitch :foreground "SteelBlue" :family "Inconsolata"))))
 '(tabbar-button ((t (:background "black" :foreground "lightgreen"))))
 '(tabbar-button-face ((t (:inherit tabbar-default-face :foreground "green"))))
 '(tabbar-default ((((class color grayscale) (background dark)) (:inherit variable-pitch :background "black" :height 0.8))))
 '(tabbar-default-face ((t (:inherit variable-pitch :foreground "gray60" :height 0.8))))
 '(tabbar-highlight ((t (:foreground "lightgreen"))))
 '(tabbar-selected ((t (:inherit tabbar-default :foreground "green"))))
 '(tabbar-selected-face ((t (:inherit tabbar-default-face :foreground "green"))))
 '(tabbar-separator ((t (:inherit tabbar-default :foreground "gray"))))
 '(tabbar-unselected ((t (:inherit tabbar-default))))
 '(tabbar-unselected-face ((t (:inherit tabbar-default-face)))))
