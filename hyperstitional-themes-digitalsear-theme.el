;;; hyperstitional-themes-digitalsear-theme.el --- Searingly Digital -*- lexical-binding: t; -*-

;; Copyright (C) 2024 precompute

;; Author: precompute <git@precompute.net>
;; URL: https://github.com/precompute/hyperstitional-themes
;; Created: April 16, 2024
;; Modified: April 16, 2024
;; Version: 0.0.1
;; Package-Requires: ((emacs "26.1"))

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; Searing you digitally forever

;;; Code:
(require 'hyperstitional-themes)

;;;; definition
(deftheme hyperstitional-themes-digitalsear
  "Searingly Digital, searing you digitally forever.")

(let ((class '((class color)))
;;;;; palette
      (bg "#CCCCCC")
      (fg "#000000")
      (c0 "#0000FF")
      (c1 "#2B0BD5")
      (c2 "#5616AB")
      (c3 "#812181")
      (c4 "#AC2C57")
      (c5 "#D7372D")
      (c6 "#FF4000")
      (c0-light "#ABABFF")
      (c1-light "#BBB0F3")
      (c2-light "#CBB5E7")
      (c3-light "#DBBADB")
      (c4-light "#E8BCC9")
      (c5-light "#F2BEBA")
      (c6-light "#FFC1AB")
      (c0-dim "#3333FF")
      (c1-dim "#4120F3")
      (c2-dim "#6D1CD8")
      (c3-dim "#AA2BAA")
      (c4-dim "#CE3E6E")
      (c5-dim "#B02A21")
      (c6-dim "#FF6633")
      (c0-dark "#00008C")
      (c1-dark "#190776")
      (c2-dark "#310D61")
      (c3-dark "#4A134A")
      (c4-dark "#601930")
      (c5-dark "#771F18")
      (c6-dark "#8C2400")
      (e1 "#40FF00")
      )
;;;;; definitions
;;;;;; base
  (custom-theme-set-faces
   'hyperstitional-themes-digitalsear
   `(bold ((,class (:weight bold))))
   `(bold-italic ((,class (:weight bold :slant italic))))
   `(fixed-pitch ((,class (:height 1.0))))
   `(fixed-pitch-serif ((,class (:height 1.0))))
   `(italic ((,class (:slant italic))))
   `(underline ((,class (:underline t))))
   `(variable-pitch ((,class (:height 1.0))))
   `(fringe ((,class (:background ,bg))))
   `(vertical-border ((,class (:background ,bg :foreground ,bg))))
   `(window-divider ((,class (:background ,bg :foreground ,bg))))
   `(window-divider-first-pixel ((,class (:background ,bg :foreground ,bg))))
   `(window-divider-last-pixel  ((,class (:background ,bg :foreground ,bg))))

   `(default ((,class (:foreground ,fg :background ,bg))))

   `(hl-line  ((,class (:foreground ,c2-light))))
   `(button  ((,class (:background ,c3-dark :foreground ,c3-light :box (:line-width 2 :color ,c3 :style released-button)))))

   `(error ((,class (:foreground ,c6-dark))))
   `(highlight ((,class (:background ,c6-light))))
   `(match ((,class (:foreground ,c2-light))))
   `(menu ((,class (:foreground ,fg :background ,bg))))
   `(minibuffer-prompt ((,class (:foreground ,c3-dark :slant italic))))
   `(read-multiple-choice ((,class (:foreground ,fg :slant italic))))
   `(region ((,class (:background ,c6-dim))))
   `(secondary-selection ((,class (:background ,c4-dark))))
   `(shadow ((,class (:foreground ,c0-dark))))
   `(success ((,class (:foreground ,e1))))
   `(warning ((,class (:foreground ,c1-dark))))
   `(cursor ((,class (:background ,c6))))
   `(whitespace-tab ((,class (:foreground ,bg :background ,bg))))
   `(escape-glyph ((,class (:foreground ,bg))))


   ))

(provide-theme 'hyperstitional-themes-digitalsear)

;;; hyperstitional-themes-digitalsear-theme.el ends here
