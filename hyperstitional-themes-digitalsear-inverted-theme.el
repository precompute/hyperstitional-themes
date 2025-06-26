;;; hyperstitional-themes-digitalsear-inverted-theme.el --- Searingly Digital -*- lexical-binding: t; -*-

;; Copyright (C) 2025 precompute

;; Author: precompute <git@precompute.net>
;; URL: https://github.com/precompute/hyperstitional-themes
;; Created: April 18, 2024
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

;; (defgroup hyperstitional-themes-digitalsear-inverted ()
;;   "Group for hyperstitional-theme-digitalsear-inverted."
;;   :group 'hyperstitional-themes-digitalsear-inverted-faces)

(deftheme hyperstitional-themes-digitalsear-inverted
  "Searingly Digital, but inverted."
  :background-mode 'dark
  :kind 'color-scheme
  :family 'hyperstitional-themes-digitalsear)

(hyperstitional-themes-digitalsear-generate
 'hyperstitional-themes-digitalsear-inverted
 '((bg . "#333344")
   (fg . "#FFFFFF")
   (c0 . "#FFFF00")
   (c1 . "#D4F42A")
   (c2 . "#A9E954")
   (c3 . "#7EDE7E")
   (c4 . "#53D3A8")
   (c5 . "#28C8D2")
   (c6 . "#00BFFF")
   (c0-light . "#545400")
   (c1-light . "#444F0C")
   (c2-light . "#344A18")
   (c3-light . "#244524")
   (c4-light . "#174336")
   (c5-light . "#0D4145")
   (c6-light . "#003E54")
   (c0-dim . "#CCCC00")
   (c1-dim . "#BEDF0C")
   (c2-dim . "#92E327")
   (c3-dim . "#55D455")
   (c4-dim . "#31C191")
   (c5-dim . "#229FAA")
   (c6-dim . "#0099CC")
   (c0-dark . "#FFFF73")
   (c1-dark . "#E6F889")
   (c2-dark . "#CEF29E")
   (c3-dark . "#B5ECB5")
   (c4-dark . "#9FE6CF")
   (c5-dark . "#88E0E7")
   (c6-dark . "#73DBFF")
   (e1 . "#0000FF")))

(provide-theme 'hyperstitional-themes-digitalsear-inverted)

;;; hyperstitional-themes-digitalsear-inverted-theme.el ends here
