;; If it is Windows OS, place following two lines at the end of .emacs.el file:
;; (add-to-list 'load-path "~/.emacs.d/")
;; (load-library "init")

;; Very good source of recipes about emacs configuring:
;; http://www.masteringemacs.org/article/beginners-guide-to-emacs

;; Enable IDO (“Interactively Do Things”) mode
(ido-mode 1)
(setq ido-enable-flex-matching t)
;; Use Ido mode to work with C-x C-f (find-files)
;(setq ido-everywhere t)

;; Don't show help screen at startup
(setq inhibit-startup-screen t)
;; Don't show toolbar
(setq tool-bar-mode nil)

(add-to-list 'load-path "~/.emacs.d/plugins")
;;(require 'qt-pro)
;;(add-to-list 'auto-mode-alist '("\\pr[io]$" . qt-pro-mode))
(require 'qmake-mode "qmake.el")
(add-to-list 'auto-mode-alist '("\\pr[io]$" . qmake-mode))

;;;; This snippet enables lua-mode
;; This line is not necessary, if lua-mode.el is already on your load-path
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

;;--- Load mmix-mode and use it for .mms files -----------
(autoload 'mmix-mode "mmix-mode" "Major mode for editing MMIX files" t)
(setq auto-mode-alist (cons '("\\.mms" . mmix-mode)
                                  auto-mode-alist)) 
