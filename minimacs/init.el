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

(defvar user-emacs-cache-directory)
(defvar project-list-file
  (file-name-concat user-emacs-cache-directory "projects"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-buffer-menu t)
 '(inhibit-startup-echo-area-message "mattiasb")
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(package-selected-packages '(corfu))
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
  :init (global-corfu-mode))

(provide 'init)
;;; init.el ends here
