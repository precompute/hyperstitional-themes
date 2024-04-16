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
      ;; (bg "#D2BAB2")
      (bg "#CCCCBB")
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
      (c5-dim "#DD6055")
      (c6-dim "#FF6633")
      (c0-dark "#00008C")
      (c1-dark "#190776")
      (c2-dark "#310D61")
      (c3-dark "#4A134A")
      (c4-dark "#601930")
      (c5-dark "#771F18")
      (c6-dark "#8C2400")
      (e1 "#FFFF00")
      ;; (e1 "#40FF00")
      )
;;;;; definitions
;;;;;; base
  (custom-theme-set-faces
   'hyperstitional-themes-digitalsear
   `(bold                       ((,class (:weight bold))))
   `(bold-italic                ((,class (:weight bold :slant italic))))
   `(fixed-pitch                ((,class (:height 1.0))))
   `(fixed-pitch-serif          ((,class (:height 1.0))))
   `(italic                     ((,class (:slant italic))))
   `(underline                  ((,class (:underline t))))
   `(variable-pitch             ((,class (:height 1.0))))
   `(fringe                     ((,class (:background ,bg))))
   `(vertical-border            ((,class (:background ,bg :foreground ,bg))))
   `(window-divider             ((,class (:background ,bg :foreground ,bg))))
   `(window-divider-first-pixel ((,class (:background ,bg :foreground ,bg))))
   `(window-divider-last-pixel  ((,class (:background ,bg :foreground ,bg))))

   `(default ((,class (:foreground ,fg :background ,bg))))

   `(hl-line  ((,class (:foreground ,c2-light))))
   `(button  ((,class (:background ,c6 :foreground ,c6-dark :box (:line-width 2 :color ,c6-light :style released-button)))))

   `(error                ((,class (:foreground ,c6-dark))))
   `(highlight            ((,class (:background ,c1-light))))
   `(match                ((,class (:foreground ,c2-light))))
   `(menu                 ((,class (:foreground ,fg :background ,bg))))
   `(minibuffer-prompt    ((,class (:foreground ,c3-dark :slant italic))))
   `(read-multiple-choice ((,class (:foreground ,fg :slant italic))))
   `(region               ((,class (:background ,c6-dim))))
   `(secondary-selection  ((,class (:background ,c4-dark))))
   `(shadow               ((,class (:foreground ,c0-dark))))
   `(success              ((,class (:foreground ,e1))))
   `(warning              ((,class (:foreground ,c1-dark))))
   `(cursor               ((,class (:background ,c6))))
   `(whitespace-tab       ((,class (:background ,c6-light))))
   `(escape-glyph         ((,class (:foreground ,c2-dark))))

   `(highlight-numbers-number ((,class (:foreground ,c1-dim))))
   `(highlight-quoted-symbol  ((,class (:foreground ,c4-dim))))
   `(highlight-quoted-quote   ((,class (:foreground ,c3-dim))))

   `(custom-button         ((,class (:foreground ,c5 :background ,c5-dark :box (:line-width 2 :color ,c5-light :style released-button)))))
   `(custom-button-pressed ((,class (:foreground ,c5 :background ,c5-dark :box (:line-width 2 :color ,c5-light :style pressed-button)))))

;;;;;; popup
   `(popup-face               ((,class (:inherit button :foreground ,c1-light))))
   `(popup-menu-face          ((,class (:inherit popup-face))))
   `(popup-tip-face           ((,class (:inherit (popup-face variable-pitch)))))

;;;;;; font-lock
   `(font-lock-builtin-face              ((,class (:foreground ,c3 :inherit bold))))
   `(font-lock-comment-face              ((,class (:foreground ,c0 :background ,c0-light :slant italic))))
   `(font-lock-comment-delimiter-face    ((,class (:foreground ,c2 :background ,c0-light :slant italic))))
   `(font-lock-constant-face             ((,class (:foreground ,c4))))
   `(font-lock-function-name-face        ((,class (:foreground ,c5))))
   `(font-lock-keyword-face              ((,class (:foreground ,c6 :inherit bold))))
   `(font-lock-string-face               ((,class (:foreground ,c2 :background ,bg))))
   `(font-lock-type-face                 ((,class (:foreground ,c1))))
   `(font-lock-variable-name-face        ((,class (:foreground ,c3-dark))))
   `(font-lock-variable-use-face         ((,class (:foreground ,c5-dim))))
   `(font-lock-property-name-face        ((,class (:foreground ,c4-dark))))
   `(font-lock-property-use-face         ((,class (:foreground ,c4-dim))))
   `(font-lock-punctuation-face          ((,class (:foreground ,c0-dark))))
   `(font-lock-misc-punctuation-face     ((,class (:foreground ,c5-dark))))
   `(font-lock-escape-face               ((,class (:foreground ,c5-dim))))
   `(font-lock-regexp-face               ((,class (:foreground ,c1-dark))))
   `(font-lock-bracket-face              ((,class (:foreground ,c6))))
   `(font-lock-operator-face             ((,class (:foreground ,c2-dim))))
   `(font-lock-delimiter-face            ((,class (:foreground ,c3-dim))))
   `(font-lock-doc-face                  ((,class (:foreground ,c2-dim))))
   `(font-lock-doc-markup-face           ((,class (:foreground ,c2-dark))))
   `(font-lock-warning-face              ((,class (:foreground ,c6-dark))))
   `(font-lock-preprocessor-face         ((,class (:background ,c1-dark))))
   `(font-lock-negation-char-face        ((,class (:foreground ,c5-dark))))
   `(font-lock-number-face               ((,class (:inherit highlight-numbers-number))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,c1-dim))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,c0-dim))))

;;;;;; Header line and mode line
   `(mode-line                  ((,class (:inherit variable-pitch :foreground ,c0 :background ,c6))))
   `(mode-line-buffer-id        ((,class (:inherit variable-pitch :foreground ,c1 :background ,c6))))
   `(mode-line-emphasis         ((,class (:inherit variable-pitch :foreground ,c2 :background ,c6))))
   `(mode-line-highlight        ((,class (:inherit variable-pitch :foreground ,c3 :background ,c6))))
   `(mode-line-inactive         ((,class (:inherit variable-pitch :foreground ,c4 :background ,c6-dim))))
   `(header-line                ((,class (:inherit (variable-pitch mode-line)))))
   `(header-line-highlight      ((,class (:inherit (variable-pitch mode-line-highlight)))))

;;;;;; Info mode
   `(info-quoted       ((,class (:foreground ,c1 :background ,bg))))
   `(info-header-node  ((,class (:foreground ,fg :background ,bg :inherit bold))))
   `(info-header-xref  ((,class (:foreground ,fg :background ,bg :underline t))))
   `(info-node         ((,class (:foreground ,c2 :background ,bg))))
   `(info-index-match  ((,class (:foreground ,fg :background ,c0-light))))
   `(info-menu-header  ((,class (:foreground ,fg :background ,c1-light :weight bold))))
   `(info-menu-star    ((,class (:foreground ,fg :background ,c2-light))))
   `(info-title-1      ((,class (:foreground ,c6 :background ,bg :inherit bold))))
   `(info-title-2      ((,class (:foreground ,c5 :background ,bg :inherit bold))))
   `(info-title-3      ((,class (:foreground ,c4 :background ,bg :inherit bold))))
   `(info-title-4      ((,class (:foreground ,c3 :background ,bg :inherit bold))))
   `(info-xref         ((,class (:foreground ,c4 :background ,bg :underline t))))
   `(info-xref-visited ((,class (:foreground ,c5 :background ,bg :underline t))))
   `(helpful-heading ((,class (:inherit variable-pitch :foreground ,c6 :background ,c6-light :height 1.1 :underline t))))

;;;;;; Eldoc
   `(eldoc-highlight-function-argument ((,class (:inherit (bold region)))))

;;;;;; evil
   `(evil-ex-info                   ((,class (:foreground ,c5-dim :slant italic))))
   `(evil-ex-search                 ((,class (:foreground ,c1-dim :background ,c1-light :inherit bold))))
   `(evil-ex-substitute-matches     ((,class (:foreground ,c1-dim :strike-through t :inherit bold))))
   `(evil-ex-substitute-replacement ((,class (:foreground ,c4-dim :inherit bold))))

;;;;;; rainbow-delimiter
   `(rainbow-delimiters-base-face       ((,class (:foreground ,c0-dark))))
   `(rainbow-delimiters-depth-1-face    ((,class (:foreground ,c6))))
   `(rainbow-delimiters-depth-2-face    ((,class (:foreground ,c5))))
   `(rainbow-delimiters-depth-3-face    ((,class (:foreground ,c4))))
   `(rainbow-delimiters-depth-4-face    ((,class (:foreground ,c3))))
   `(rainbow-delimiters-depth-5-face    ((,class (:foreground ,c2))))
   `(rainbow-delimiters-depth-6-face    ((,class (:foreground ,c1))))
   `(rainbow-delimiters-depth-7-face    ((,class (:foreground ,c0))))
   `(rainbow-delimiters-depth-8-face    ((,class (:foreground ,c0-dim))))
   `(rainbow-delimiters-depth-9-face    ((,class (:foreground ,c1-dim))))
   `(rainbow-delimiters-unmatched-face  ((,class (:foreground ,c6-dark))))
   `(rainbow-delimiters-mismatched-face ((,class (:foreground ,c6-dark))))
   `(rainbow-delimiters-base-error-face ((,class (:foreground ,c6-dark))))

   ))

(provide-theme 'hyperstitional-themes-digitalsear)

;;; hyperstitional-themes-digitalsear-theme.el ends here
