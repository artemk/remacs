; MELPA packaging
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

; ELPA packagin
(add-to-list 'load-path
             "~/.emacs.d/plugins/package.el")
(load "package")
(package-initialize)

; (desktop-save-mode 1)

; (ns-toggle-toolbar)

(setq create-lockfiles nil)

(add-to-list 'load-path "~/.emacs.d/plugins/maxframe")
(require 'maxframe)
(add-hook 'window-setup-hook 'maximize-frame t)

; indent-region key rebind
(global-set-key (kbd "C-M-/") 'indent-region)

; delete key fix
(global-set-key [kp-delete] 'delete-char) ; in Carbon

; disabling menu-bar-mode
(menu-bar-mode -1)

(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-use-faces nil)
; tune GC
(setq gc-cons-threshold 20000000)

; slim-mode
;;(add-to-list 'load-path "~/.emacs.d/plugins/emacs-slim")
;;(require 'slim-mode)

; tabbar mode
(add-to-list 'load-path "~/.emacs.d/plugins/tabbar")
(require 'tabbar)

 (global-set-key (kbd "C-c <left>") 'tabbar-backward-tab)
 (global-set-key (kbd "C-c <right>") 'tabbar-forward-tab)
 (global-set-key (kbd "C-c .") 'tabbar-forward-group)

; jump-mode
(add-to-list 'load-path "~/.emacs.d/plugins/jump")

; deft mode
(add-to-list 'load-path "~/.emacs.d/plugins/deft")

(when (require 'deft nil 'noerror)
   (setq
      deft-extension "org"
      deft-directory "~/.deft/"
      deft-text-mode 'org-mode)
   (global-set-key (kbd "<f9>") 'deft))

; actionscript mode
(add-to-list 'load-path "~/.emacs.d/plugins/actionscript")
(require 'actionscript-mode)
(add-to-list 'auto-mode-alist '("\\.as$" . actionscript-mode))
(add-to-list 'auto-mode-alist '("\\.mxml$" . xml-mode))

; coffeescript mode
(add-to-list 'load-path "~/.emacs.d/plugins/coffee-mode")
(require 'coffee-mode)
; /coffeescript mode

; move line/region up/down
(load-file "~/.emacs.d/plugins/movelineregion/movelineregion.el")

; rabl
(add-to-list 'auto-mode-alist '("\\.rabl$" . ruby-mode))

; haml & sass
(add-to-list 'auto-mode-alist '("\\.scss$" . sass-mode))
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))

; nxhtml mode
(add-to-list 'load-path
             "~/.emacs.d/plugins/nxhtml")
; (load "autostart.el")

; textmate.el (autobrackets behavior)
(load-file "~/.emacs.d/plugins/textmate.el/textmate.el")
(require 'textmate-mode)
(defun textmate-mode-enable-hook ()
(textmate-mode t))
(add-hook 'feature-mode-hook 'textmate-mode-enable-hook)
(add-hook 'ruby-mode-hook 'textmate-mode-enable-hook)
(add-hook 'emacs-lisp-mode-hook 'textmate-mode-enable-hook)
(add-hook 'clojure-mode-hook 'textmate-mode-enable-hook)

; swap buffers in window (by ChrisWebber)
(setq swapping-buffer nil)
 (setq swapping-window nil)
 (defun swap-buffers-in-windows ()
   "Swap buffers between two windows"
   (interactive)
   (if (and swapping-window
            swapping-buffer)
       (let ((this-buffer (current-buffer))
             (this-window (selected-window)))
         (if (and (window-live-p swapping-window)
                  (buffer-live-p swapping-buffer))
             (progn (switch-to-buffer swapping-buffer)
                    (select-window swapping-window)
                    (switch-to-buffer this-buffer)
                    (select-window this-window)
                    (message "Swapped buffers."))
           (message "Old buffer/window killed.  Aborting."))
         (setq swapping-buffer nil)
         (setq swapping-window nil))
     (progn
       (setq swapping-buffer (current-buffer))
       (setq swapping-window (selected-window))
       (message "Buffer and window marked for swapping."))))
 (global-set-key (kbd "C-c s") 'swap-buffers-in-windows)

; deleting trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

; adding yasnippet
(add-to-list 'load-path
             "~/.emacs.d/plugins/yasnippet-0.6.1c")
(require 'yasnippet)
(setq yas/root-directory "~/.emacs.d/snippets")
(yas/initialize)
(yas/load-directory yas/root-directory)

; markdown mode hook
(add-to-list 'load-path "~/.emacs.d/plugins/markdown-mode")
(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\\.text" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist
   (cons '("\\.md" . markdown-mode) auto-mode-alist))

; mo-git-blame
(add-to-list 'load-path "~/.emacs.d/plugins/mo-git-blame")
(autoload 'mo-git-blame-file "mo-git-blame" nil t)
(autoload 'mo-git-blame-current "mo-git-blame" nil t)
(global-set-key (kbd "C-c g c") 'mo-git-blame-current)
(global-set-key (kbd "C-c g f") 'mo-git-blame-file)

; ido
(require 'ido)
(ido-mode t)

; git-emacs
(add-to-list 'load-path "~/.emacs.d/plugins/git-emacs")
(require 'git-emacs-autoloads)

; yaml-mode
(add-to-list 'load-path "~/.emacs.d/plugins/yaml-mode")
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

; emacs list expectations (rspec is dependent on it)
(add-to-list 'load-path "~/.emacs.d/plugins")
(require 'el-expectations)
; mode-compile (required by rspec-mode)
(add-to-list 'load-path "~/.emacs.d/plugins/mode-compile")
(require 'mode-compile)
(require 'ansi-color)

; rspec-emacs
(add-to-list 'load-path "~/.emacs.d/plugins/rspec-mode")
(require 'rspec-mode)

; applying color heme
(add-to-list 'load-path "~/.emacs.d/plugins/color-theme-6.6.0")
(require 'color-theme)
(load-file "~/.emacs.d/themes/color-theme-railscasts.el")
(load-file "~/.emacs.d/themes/twilight/color-theme-twilight.el")
(color-theme-solarized-dark)

; disabling tool bar
(tool-bar-mode)
; disabling all scroll bars
(scroll-bar-mode)

; loading Feature mode cucumber.el
(add-to-list 'load-path "~/.emacs.d/plugins/cucumber.el")
(require 'feature-mode)
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

;; Rinari
(add-to-list 'load-path "~/.emacs.d/plugins/rinari")
(require 'rinari)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(rails-ws:default-server-type "webrick"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

; defining line duplication hotkey
(defun duplicate-line ()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (newline)
  (yank)
)
(global-set-key (kbd "C-c d") 'duplicate-line)

;; auto-complete
(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete/ac-dict")
(ac-config-default)

(setq custom-file "~/.emacs.d/customizations.el")
(load custom-file)

; fullscreen toggle
(global-set-key (kbd "C-M-`") 'ns-toggle-fullscreen)

;; smarter begin of line
(defun smarter-move-beginning-of-line (arg)
  "Move point back to indentation of beginning of line.

Move point to the first non-whitespace character on this line.
If point is already there, move to the beginning of the line.
Effectively toggle between the first non-whitespace character and
the beginning of the line.

If ARG is not nil or 1, move forward ARG - 1 lines first.  If
point reaches the beginning or end of the buffer, stop there."
  (interactive "^p")
  (setq arg (or arg 1))

  ;; Move lines first
  (when (/= arg 1)
    (let ((line-move-visual nil))
      (forward-line (1- arg))))

  (let ((orig-point (point)))
    (back-to-indentation)
    (when (= orig-point (point))
      (move-beginning-of-line 1))))

;; remap C-a to `smarter-move-beginning-of-line'
(global-set-key [remap move-beginning-of-line]
                'smarter-move-beginning-of-line)

; comment/uncommente
(global-set-key "\C-ck" 'kill-whole-line)
(global-set-key (kbd"\C-c#") 'comment-or-uncomment-region)


; projectile
(add-to-list 'load-path "~/emacs.d/plugins/projectile")
(require 'projectile)
(add-hook 'ruby-mode-hook 'projectile-on)
(projectile-global-on)

(require 'ack-and-a-half)
;; Create shorter aliases
(defalias 'ack 'ack-and-a-half)
(defalias 'ack-same 'ack-and-a-half-same)
(defalias 'ack-find-file 'ack-and-a-half-find-file)
(defalias 'ack-find-file-same 'ack-and-a-half-find-file-same)

; save session from one emacs session to next
(desktop-save-mode 1)


(defun touch ()
     "updates mtime on the file for the current buffer"
     (interactive)
     (shell-command (concat "touch " (shell-quote-argument (buffer-file-name))))
     (clear-visited-file-modtime))

(global-set-key (kbd"\C-c t") 'touch)
(put 'dired-find-alternate-file 'disabled nil)
