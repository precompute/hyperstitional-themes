;;; hyperstitional-themes-rebug-theme.el --- Digital Bug -*- lexical-binding: t; -*-

;; Copyright (C) 2025 precompute

;; Author: precompute <git@precompute.net>
;; URL: https://github.com/precompute/hyperstitional-themes
;; Created: June 12, 2024
;; Modified: June 18, 2025
;; Version: 2.3.0

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
;; Digital Bug

;;; Code:
(require 'hyperstitional-themes)

(deftheme hyperstitional-themes-rebug
  "Digital Bug."
  :background-mode 'light
  :kind 'color-scheme
  :family 'hyperstitional-themes-rebug)

(hyperstitional-themes-rebug-generate
 'hyperstitional-themes-rebug
 '((ra . "#e11e2c")
   (rb . "#e53a46")
   (rc . "#e95b65")
   (rd . "#ee7c85")
   (re . "#f29da3")
   (rf . "#f6bec2")
   (rg . "#fbdee0")
   (ga . "#73c242")
   (gb . "#85ca5a")
   (gc . "#99d375")
   (gd . "#aedc91")
   (ge . "#c2e4ad")
   (gf . "#d6edc8")
   (gg . "#ebf6e4")
   (ba . "#2939c2")
   (bb . "#4452ca")
   (bc . "#636fd3")
   (bd . "#838cdc")
   (be . "#a2a9e4")
   (bf . "#c1c6ed")
   (bg . "#e0e2f6")
   (wa . "#000000")
   (wb . "#202020")
   (wc . "#454545")
   (wd . "#6b6b6b")
   (we . "#909090")
   (wf . "#b5b5b5")
   (wg . "#dadada")
   (ww . "#ffffff")))

(provide-theme 'hyperstitional-themes-rebug)

;;; hyperstitional-themes-rebug-theme.el ends here
