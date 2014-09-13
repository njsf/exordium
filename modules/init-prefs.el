;;;; Definition of the variables that init-local-prefs.el can override.
;;;
;;; These variables control other init-XXX files, such as init-ui.el.
;;; You can override them by creating your own file
;;; ~/.emacs.d/init-local-prefs.el with content like:
;;;
;;; (setq *init-preferred-frame-width*  110
;;;       *init-preferred-frame-height* 75)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; UI

(defvar *init-preferred-fonts*
  '(("Consolas"  . 120)
    ("Monaco"    . 120)
    ("Monospace" . 120)
    ("Mono"      . 120))
  "List of preferred fonts/sizes to use, in decreasing order of
  preference. We will use the first one that is available on the
  local machine. It is a list of pairs (font-name
  . font-size). If nil, we don't set any font. Note that you can
  get the list of available font names by
  evaluating (font-family-list)")

(defvar *init-preferred-frame-width* 100
  "Default frame width (number of columns)")

;; Note: a weird bug in OS X makes the title bar black if height is too big
(defvar *init-preferred-frame-height* 65
  "Default frame height (a number of lines)")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Extensions

(defvar *init-enable-electric-pair-mode* t
  "Enables electric-pair-mode")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Theme

(defvar *init-enable-powerline* t
  "Enables Powerline")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Keyboard

(defvar *init-enable-newline-and-indent* t
  "If t, binds the return key to newline-and-indent, and
  shift-return for just newline.
  If nil, do the opposite")

(defvar *init-enable-cua-mode* t
  "Enables CUA mode globally")

(defvar *init-keyboard-escape* t
  "Enables ESC key for keyboard quit")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; C++ and RTags

(defvar *init-header-auto-complete* nil
  "Enables auto-complete for header files (non-RTags)")

(defvar *init-rtags-auto-complete* nil
  "Enables RTags as the source for auto-complete")

(provide 'init-prefs)