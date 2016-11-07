(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(blink-cursor-delay 0.5)
 '(case-fold-search t)
 '(column-number-mode t)
 '(current-language-environment "Spanish")
 '(default-input-method "spanish-postfix")
 '(global-font-lock-mode t nil (font-lock))
 '(mouse-wheel-mode t nil (mwheel))
 '(save-place t nil (saveplace))
 '(show-paren-mode t nil (paren))
 '(tool-bar-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "white" :foreground "white"))))
 '(region ((((class color) (background dark)) (:background "Grey15")))))

;; Colors and fonts
(set-background-color "black")
(set-foreground-color "white")
(set-frame-font "9x15")

;; Disabling the Welcome Screen
(setq inhibit-startup-message t)

;; Turn wrapping on in horizontally-split windows
(setq truncate-partial-width-windows nil)

;; Starting emacs in full screen
(defun toggle-fullscreen ()
  (interactive)
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
	    		 '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
	    		 '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
)
(toggle-fullscreen)

;; Tell emacs where is your personal elisp lib dir
;; this is default dir for extra packages
(add-to-list 'load-path "~/.emacs.d/")

;; load the packages, best not to include the ending ".el" or ".elc"
;; (load "coffee-mode") ;; from 'https://github.com/defunkt/coffee-mode'


;; Set encoding
(prefer-coding-system 'utf-8)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)

;; (set-keyboard-coding-system 'utf-8)

;; 4 Spaces instead of tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)
