;;; hyperstitional-themes-digitalsear-theme.el --- Searingly Digital -*- lexical-binding: t; -*-

;; Copyright (C) 2025 precompute

;; Author: precompute <git@precompute.net>
;; URL: https://github.com/precompute/hyperstitional-themes
;; Created: April 16, 2024
;; Modified: June 11, 2025
;; Version: 3.0.0

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
;; Searingly Digital.

;;; Code:
(require 'hyperstitional-themes)

;; (defgroup hyperstitional-themes-digitalsear ()
;;   "Group for hyperstitional-theme-digitalsear."
;;   :group 'hyperstitional-themes-digitalsear-faces)

(deftheme hyperstitional-themes-digitalsear
  "Searingly Digital."
  :background-mode 'light
  :kind 'color-scheme
  :family 'hyperstitional-themes-digitalsear)

(hyperstitional-themes-digitalsear-generate
 'hyperstitional-themes-digitalsear
 '((bg . "#CCCCBB")
   (fg . "#000000")
   (c0 . "#0000FF")
   (c1 . "#2B0BD5")
   (c2 . "#5616AB")
   (c3 . "#812181")
   (c4 . "#AC2C57")
   (c5 . "#D7372D")
   (c6 . "#FF4000")
   (c0-light . "#ABABFF")
   (c1-light . "#BBB0F3")
   (c2-light . "#CBB5E7")
   (c3-light . "#DBBADB")
   (c4-light . "#E8BCC9")
   (c5-light . "#F2BEBA")
   (c6-light . "#FFC1AB")
   (c0-dim . "#3333FF")
   (c1-dim . "#4120F3")
   (c2-dim . "#6D1CD8")
   (c3-dim . "#AA2BAA")
   (c4-dim . "#CE3E6E")
   (c5-dim . "#DD6055")
   (c6-dim . "#FF6633")
   (c0-dark . "#00008C")
   (c1-dark . "#190776")
   (c2-dark . "#310D61")
   (c3-dark . "#4A134A")
   (c4-dark . "#601930")
   (c5-dark . "#771F18")
   (c6-dark . "#8C2400")
   (e1 . "#FFFF00")))

(provide-theme 'hyperstitional-themes-digitalsear)

;;; hyperstitional-themes-digitalsear-theme.el ends here
