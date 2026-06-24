;;; emacs-snippets-el --- A collection of tempo.el snippets -*- lexical-binding: t; -*-

;; Copyright 2026 Olivia

;; Maintainer: Olivia <oliviawolfie@pm.me>
;; Author: Olivia <oliviawolfie@pm.me>
;; Version: 1.0.0
;; Package-Requires: ((tempel "20260609.1545"))
;; URL: https://codeberg.org/LunarWatcher/emacs-snippets

;;; License

;; This is free and unencumbered software released into the public domain.
;;
;; Anyone is free to copy, modify, publish, use, compile, sell, or
;; distribute this software, either in source code form or as a compiled
;; binary, for any purpose, commercial or non-commercial, and by any
;; means.
;;
;; In jurisdictions that recognize copyright laws, the author or authors
;; of this software dedicate any and all copyright interest in the
;; software to the public domain. We make this dedication for the benefit
;; of the public at large and to the detriment of our heirs and
;; successors. We intend this dedication to be an overt act of
;; relinquishment in perpetuity of all present and future rights to this
;; software under copyright law.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
;; IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
;; OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
;; ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
;; OTHER DEALINGS IN THE SOFTWARE.
;;
;; For more information, please refer to <http://unlicense.org>

;;; Code
(defconst templates-dir
  (file-name-directory
   (cond
    (load-in-progress load-file-name)
    ((and (boundp 'byte-compile-current-file) byte-compile-current-file)
     byte-compile-current-file)
    (:else (buffer-file-name)))))

;;;###autoload
(defun emacs-snippets-load()
  (let ((template-dir (expand-file-name "templates/*.eld"
                                        templates-dir)))
    (when (boundp 'tempel-path)
      (cond
       ((stringp tempel-path)
        (setq tempel-path (list tempel-path template-dir)))
       ((listp tempel-path)
        (add-to-list 'tempel-path template-dir t))))))

(require 'tempel)
(emacs-snippets-load)
(provide 'emacs-snippets)
