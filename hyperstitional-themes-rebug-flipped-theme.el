;;; hyperstitional-themes-rebug-flipped-theme.el --- Digital Bug, Flipped. -*- lexical-binding: t; -*-

;; Copyright (C) 2025 precompute

;; Author: precompute <git@precompute.net>
;; URL: https://github.com/precompute/hyperstitional-themes
;; Created: June 12, 2024
;; Modified: June 19, 2025
;; Version: 2.4.0

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
;; Digital Bug, Flipped.

;;; Code:
(require 'hyperstitional-themes)

(deftheme hyperstitional-themes-rebug-flipped
  "Digital Bug, Flipped."
  :background-mode 'dark
  :kind 'color-scheme
  :family 'hyperstitional-themes-rebug)

(hyperstitional-themes-rebug-generate
 'hyperstitional-themes-rebug-flipped
 '((ra . "#e11e2c")
   (rb . "#c51a26")
   (rc . "#a41620")
   (rd . "#83111a")
   (re . "#620d13")
   (rf . "#41090d")
   (rg . "#210406")
   (ga . "#73c242")
   (gb . "#65aa3a")
   (gc . "#548e30")
   (gd . "#437126")
   (ge . "#32541d")
   (gf . "#213813")
   (gg . "#111c0a")
   (ba . "#0c44fb")
   (bb . "#0a3bdc")
   (bc . "#0932b7")
   (bd . "#072792")
   (be . "#051e6d")
   (bf . "#031449")
   (bg . "#020a24")
   (wa . "#ffffff")
   (wb . "#dfdfdf")
   (wc . "#bababa")
   (wd . "#949494")
   (we . "#6f6f6f")
   (wf . "#4a4a4a")
   (wg . "#252525")
   (ww . "#000000")))

(provide-theme 'hyperstitional-themes-rebug-flipped)

;;; hyperstitional-themes-rebug-flipped-theme.el ends here
