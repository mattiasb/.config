;;; early-init.el --- Early Init -*- lexical-binding: t; -*-

;; SPDX-License-Identifier: GPL-3.0-or-later
;; Copyright 2013-2020, Mattias Bengtsson <mattias.jc.bengtsson@gmail.com>

;; Author           : Mattias Bengtsson <mattias.jc.bengtsson@gmail.com>
;; Version          : 20231225
;; Keywords         : local
;; Package-Requires : ((emacs "29.1"))
;; URL              : https://github.com/mattiasb/.config
;; Compatibility    : GNU Emacs: 29.x

;;; Commentary:

;; My early init file

;;; Note:

;;; Code:

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(defvar user-emacs-cache-directory
  (string-replace ".config" ".cache" user-emacs-directory))

;; These has to go here apparently
(setcar native-comp-eln-load-path
        (file-name-concat user-emacs-cache-directory "eln-cache"))
(setq package-user-dir (file-name-concat user-emacs-cache-directory "elpa"))

(provide 'early-init)
;;; early-init.el ends here
