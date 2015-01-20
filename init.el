;; If it is Windows OS, place following two lines at the end of .emacs.el file:
;; (add-to-list 'load-path "~/.emacs.d/")
;; (load-library "init")

;; Very good source of recipes about emacs configuring:
;; http://www.masteringemacs.org/article/beginners-guide-to-emacs

(message "+ init.el")

;; Enable IDO (“Interactively Do Things”) mode
(ido-mode 1)
(setq ido-enable-flex-matching t)
;; Use Ido mode to work with C-x C-f (find-files)
;(setq ido-everywhere t)

;; Don't show help screen at startup
(setq inhibit-startup-screen t)
;; Don't show toolbar
(tool-bar-mode -1)

(load "~/.emacs.d/init-load-packages.el")
;; check OS type
(cond
 ((string-equal system-type "windows-nt") ; Microsoft Windows
  (message "Microsoft Windows") 
  (load "~/.emacs.d/init-win.el")
  )
 ((string-equal system-type "darwin")   ; Mac OS X
  (message "Mac OS X")
  )
 ((string-equal system-type "gnu/linux") ; linux
  (message "Linux") )
 )
