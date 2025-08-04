;;; init.el ---  -*- lexical-binding: t -*-

;; SPDX-License-Identifier: GPL-3.0-or-later
;; Copyright 2023, Mattias Bengtsson <mattias.jc.bengtsson@gmail.com>

;; Author           : Mattias Bengtsson <mattias.jc.bengtsson@gmail.com>
;; Version          : 20231225
;; Keywords         : local
;; Package-Requires : ((emacs 29.1))
;; URL              : https://github.com/mattiasb/.config
;; Compatibility    : GNU Emacs: 29.x

;;; Commentary:

;;; Note:

;;; Code:

(load-theme 'wombat)
(fido-vertical-mode)
(windmove-default-keybindings)
(display-fill-column-indicator-mode)

(defvar user-emacs-cache-directory)
(defvar project-list-file
  (file-name-concat user-emacs-cache-directory "projects"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-dark-themes '((wombat) (leuven)))
 '(delete-selection-mode t)
 '(fill-column 80)
 '(ielm-history-file-name
   (file-name-concat user-emacs-cache-directory "ielm-history.eld"))
 '(inhibit-startup-buffer-menu t)
 '(inhibit-startup-echo-area-message "mattiasb")
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(package-archive-priorities
   '(("gnu" . 20) ("nongnu" . 20) ("melpa-stable" . 20) ("melpa" . 10)))
 '(package-archivesw
   '(("gnu" . "http://elpa.gnu.org/packages/")
     ("nongnu" . "https://elpa.nongnu.org/nongnu/")
     ("melpa" . "http://melpa.org/packages/")
     ("melpa-stable" . "http://stable.melpa.org/packages/")))
 '(package-selected-packages '(auto-dark corfu))
 '(tab-always-indent 'complete))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(declare-function global-corfu-mode "corfu")

(use-package corfu
  :ensure t
  :hook (after-init . global-corfu-mode))

(use-package auto-dark
  :ensure t
  :diminish
  :hook (after-init . auto-dark-mode))

(provide 'init)
;;; init.el ends here
