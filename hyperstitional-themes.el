;;; hyperstitional-themes.el --- Weird themes with incremental palettes -*- lexical-binding: t; -*-

;; Copyright (C) 2025 precompute

;; Author: precompute <git@precompute.net>
;; URL: https://github.com/precompute/hyperstitional-themes
;; Created: April 16, 2024
;; Modified: June 21, 2025
;; Version: 2.6.0
;; Package-Requires: ((emacs "24.1"))

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

;; These themes are mostly experimental, and might be legible.

;; Monospace fonts are boring -- they make my eyes sore.

;;; Code:
;;;; Digitalsear
(defun hyperstitional-themes-digitalsear-generate (theme-name palette)
  "Generate a Digitalsear theme named THEME-NAME with PALETTE."
  (let ((class '((class color)))
        (bg (cdr (assoc 'bg palette)))
        (fg (cdr (assoc 'fg palette)))
        (c0 (cdr (assoc 'c0 palette)))
        (c1 (cdr (assoc 'c1 palette)))
        (c2 (cdr (assoc 'c2 palette)))
        (c3 (cdr (assoc 'c3 palette)))
        (c4 (cdr (assoc 'c4 palette)))
        (c5 (cdr (assoc 'c5 palette)))
        (c6 (cdr (assoc 'c6 palette)))
        (c0-light (cdr (assoc 'c0-light palette)))
        (c1-light (cdr (assoc 'c1-light palette)))
        (c2-light (cdr (assoc 'c2-light palette)))
        (c3-light (cdr (assoc 'c3-light palette)))
        (c4-light (cdr (assoc 'c4-light palette)))
        (c5-light (cdr (assoc 'c5-light palette)))
        (c6-light (cdr (assoc 'c6-light palette)))
        (c0-dim (cdr (assoc 'c0-dim palette)))
        (c1-dim (cdr (assoc 'c1-dim palette)))
        (c2-dim (cdr (assoc 'c2-dim palette)))
        (c3-dim (cdr (assoc 'c3-dim palette)))
        (c4-dim (cdr (assoc 'c4-dim palette)))
        (c5-dim (cdr (assoc 'c5-dim palette)))
        (c6-dim (cdr (assoc 'c6-dim palette)))
        (c0-dark (cdr (assoc 'c0-dark palette)))
        (c1-dark (cdr (assoc 'c1-dark palette)))
        (c2-dark (cdr (assoc 'c2-dark palette)))
        (c3-dark (cdr (assoc 'c3-dark palette)))
        (c4-dark (cdr (assoc 'c4-dark palette)))
        (c5-dark (cdr (assoc 'c5-dark palette)))
        (c6-dark (cdr (assoc 'c6-dark palette)))
        (e1 (cdr (assoc 'e1 palette))))
;;;;; definitions
;;;;;; base
    (custom-theme-set-faces
     theme-name
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

     `(hl-line  ((,class (:background ,c2-light))))
     `(button  ((,class (:background ,c6 :foreground ,c6-dark :box (:line-width 2 :color ,c6-light :style released-button)))))

     `(error                ((,class (:foreground ,c6-dark))))
     `(highlight            ((,class (:background ,c1-light))))
     `(match                ((,class (:foreground ,c6 :background ,c6-light :inherit bold))))
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
     `(fill-column-indicator ((,class (:foreground ,c0-dim))))

     `(highlight-numbers-number ((,class (:foreground ,c1-dim))))
     `(highlight-quoted-symbol  ((,class (:foreground ,c4-dim))))
     `(highlight-quoted-quote   ((,class (:foreground ,c3-dim))))

     `(apropos-symbol ((,class (:height 1.2 :foreground ,c1-dim))))

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
     `(font-lock-preprocessor-face         ((,class (:foreground ,c3-dim :background ,c1-light))))
     `(font-lock-negation-char-face        ((,class (:foreground ,c5-dark))))
     `(font-lock-number-face               ((,class (:inherit highlight-numbers-number))))
     `(font-lock-regexp-grouping-construct ((,class (:foreground ,c1-dim))))
     `(font-lock-regexp-grouping-backslash ((,class (:foreground ,c0-dim))))

;;;;;; Header line and mode line
     `(mode-line             ((,class (:inherit variable-pitch :foreground ,c0 :background ,c6))))
     `(mode-line-buffer-id   ((,class (:inherit variable-pitch :foreground ,c1 :background ,c6))))
     `(mode-line-emphasis    ((,class (:inherit variable-pitch :foreground ,c2 :background ,c6))))
     `(mode-line-highlight   ((,class (:inherit variable-pitch :foreground ,c3 :background ,c6-light))))
     `(mode-line-inactive    ((,class (:inherit variable-pitch :foreground ,c4 :background ,c6-dim))))
     `(header-line           ((,class (:inherit mode-line))))
     `(header-line-inactive  ((,class (:inherit mode-line-inactive))))
     `(header-line-highlight ((,class (:inherit mode-line-highlight))))

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

     ;; ;;;;;; Eldoc
     ;;    `(eldoc-highlight-function-argument ((,class (:inherit (bold region)))))

;;;;;; evil
     `(evil-ex-info                   ((,class (:foreground ,c5-dim :slant italic))))
     `(evil-ex-search                 ((,class (:foreground ,c1-dim :background ,c1-light :inherit bold))))
     `(evil-ex-substitute-matches     ((,class (:foreground ,c1-dim :strike-through t :inherit bold))))
     `(evil-ex-substitute-replacement ((,class (:foreground ,c4-dim :inherit bold))))

;;;;;; diredfl
     `(diredfl-dir-name               ((,class (:foreground ,c6 :background ,c6-light :inherit (bold variable-pitch)))))
     `(diredfl-number                 ((,class (:foreground ,c1-dim))))
     `(diredfl-symlink                ((,class (:foreground ,c0))))
     `(diredfl-no-priv                ((,class (:foreground ,c3))))
     `(diredfl-dir-priv               ((,class (:foreground ,c4))))
     `(diredfl-read-priv              ((,class (:foreground ,c5))))
     `(diredfl-rare-priv              ((,class (:foreground ,c5))))
     `(diredfl-link-priv              ((,class (:foreground ,c5))))
     `(diredfl-file-name              ((,class (:foreground ,c6 :inherit variable-pitch))))
     `(diredfl-exec-priv              ((,class (:foreground ,c2))))
     `(diredfl-date-time              ((,class (:foreground ,c3-dim :underline t :slant italic))))
     `(diredfl-write-priv             ((,class (:foreground ,c2-dim))))
     `(diredfl-other-priv             ((,class (:foreground ,c1-dim))))
     `(diredfl-file-suffix            ((,class (:foreground ,c3-dark :inherit variable-pitch))))
     `(diredfl-dir-heading            ((,class (:foreground ,c1 :background ,c4-dim :box t))))
     `(diredfl-autofile-name          ((,class (:foreground ,c5-dark))))
     `(diredfl-flag-mark              ((,class (:foreground ,c4-dim :background ,c4-light))))
     `(diredfl-flag-mark-line         ((,class (:slant italic :background ,c4-light))))
     `(diredfl-executable-tag         ((,class (:foreground ,c3-light))))
     `(diredfl-ignored-file-name      ((,class (:foreground ,c2-dim))))
     `(diredfl-deletion               ((,class (:foreground ,c6-dark :background ,c6-light))))
     `(diredfl-deletion-file-name     ((,class (:slant italic :strike-through ,c0-dim))))
     `(diredfl-tagged-autofile-name   ((,class (:foreground ,c2-dim))))
     `(diredfl-compressed-file-name   ((,class (:foreground ,c2-dim))))
     `(diredfl-compressed-file-suffix ((,class (:foreground ,c2-dim))))

;;;;;; dired-subtree
     `(dired-subtree-depth-1-face ((,class (:background ,c6-light))))
     `(dired-subtree-depth-2-face ((,class (:background ,c5-light))))
     `(dired-subtree-depth-3-face ((,class (:background ,c4-light))))
     `(dired-subtree-depth-4-face ((,class (:background ,c3-light))))
     `(dired-subtree-depth-5-face ((,class (:background ,c2-light))))
     `(dired-subtree-depth-6-face ((,class (:background ,c1-light))))

;;;;;; Ivy
     `(ivy-action                      ((,class (:foreground ,fg :slant italic))))
     `(ivy-completion-annotations      ((,class (:foreground ,c1-dim))))
     `(ivy-confirm-face                ((,class (:foreground ,c0-dim))))
     `(ivy-current-match               ((,class (:underline (:line-width -1 :color ,c3-dark) :inherit bold))))
     `(ivy-cursor                      ((,class (:foreground ,bg :background ,fg))))
     `(ivy-grep-info                   ((,class (:foreground ,fg))))
     `(ivy-grep-line-number            ((,class (:foreground ,fg))))
     `(ivy-highlight-face              ((,class (:foreground ,c2 :slant italic))))
     `(ivy-match-required-face         ((,class (:foreground ,c6-dark))))
     `(ivy-minibuffer-match-face-1     ((,class (:foreground ,c6-dim :underline t))))
     `(ivy-minibuffer-match-face-2     ((,class (:foreground ,c5-dim :underline t))))
     `(ivy-minibuffer-match-face-3     ((,class (:foreground ,c4-dim :underline t))))
     `(ivy-minibuffer-match-face-4     ((,class (:foreground ,c3-dim :underline t))))
     `(ivy-minibuffer-match-highlight  ((,class (:foreground ,c2-dim :box t))))
     `(ivy-modified-buffer             ((,class (:foreground ,fg :inherit bold))))
     `(ivy-modified-outside-buffer     ((,class (:foreground ,fg :inherit bold))))
     `(ivy-org                         ((,class (:foreground ,fg))))
     `(ivy-prompt-match                ((,class (:inherit ivy-current-match))))
     `(ivy-remote                      ((,class (:foreground ,c3-dark))))
     `(ivy-separator                   ((,class (:foreground ,c5-dark))))
     `(ivy-subdir                      ((,class (:foreground ,fg))))
     `(ivy-virtual                     ((,class (:foreground ,c4-dark :slant italic))))
     `(ivy-yanked-word                 ((,class (:foreground ,c2-dark))))

;;;;;; Swiper
     `(swiper-background-match-face-1  ((,class (:foreground ,c0))))
     `(swiper-background-match-face-2  ((,class (:foreground ,c1))))
     `(swiper-background-match-face-3  ((,class (:foreground ,c2))))
     `(swiper-background-match-face-4  ((,class (:foreground ,c3))))
     `(swiper-line-face                ((,class (:underline ,c4-dim :extend t))))
     `(swiper-match-face-1             ((,class (:foreground ,c0 :inherit bold))))
     `(swiper-match-face-2             ((,class (:foreground ,c1 :inherit bold))))
     `(swiper-match-face-3             ((,class (:foreground ,c2 :inherit bold))))
     `(swiper-match-face-4             ((,class (:foreground ,c3 :inherit bold))))

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

;;;;;; Line Numbers
     `(line-number              ((,class (:foreground ,c6-dim :background ,c2-light :inherit bold))))
     `(line-number-current-line ((,class (:foreground ,c6-dim :background ,c0-light :box (:line-width -1) :inherit bold))))

;;;;;; isearch, occur
     `(isearch        ((,class (:foreground ,c6-dim :background ,c6-light))))
     `(isearch-fail   ((,class (:foreground ,c0-dim :background ,c0-light))))
     `(lazy-highlight ((,class (:foreground ,fg :background ,c3-light))))
     `(match          ((,class (:foreground ,c4-dim :background ,c4-light))))
     `(query-replace  ((,class (:foreground ,c2-dim :background ,c2-light))))

;;;;;; xref
     `(xref-file-header  ((,class (:foreground ,c6 :weight bold :height 1.15 :inherit variable-pitch))))
     `(xref-match        ((,class (:background ,c6-light :underline (:color ,c0)))))
     `(xref-line-number  ((,class (:foreground ,c4-dim))))
     `(info-xref-visited ((,class (:underline (:color ,c2-dim)))))

;;;;;; imenu-list
     `(imenu-list-entry-face            ((,class (:inherit variable-pitch :foreground ,fg))))
     `(imenu-list-entry-face-3          ((,class (:inherit variable-pitch :foreground ,c3))))
     `(imenu-list-entry-face-2          ((,class (:inherit variable-pitch :foreground ,c4))))
     `(imenu-list-entry-face-1          ((,class (:inherit variable-pitch :foreground ,c5))))
     `(imenu-list-entry-face-0          ((,class (:inherit variable-pitch :foreground ,c6))))
     `(imenu-list-entry-subalist-face-3 ((,class (:inherit variable-pitch :foreground ,c3-dim :underline t))))
     `(imenu-list-entry-subalist-face-2 ((,class (:inherit variable-pitch :foreground ,c4-dim :underline t))))
     `(imenu-list-entry-subalist-face-1 ((,class (:inherit variable-pitch :foreground ,c5-dim :underline t))))
     `(imenu-list-entry-subalist-face-0 ((,class (:inherit variable-pitch :foreground ,c6-dim :underline t))))

;;;;;; Outline
     `(outline-1 ((,class (:foreground ,c6 :background ,c6-light :inherit variable-pitch))))
     `(outline-2 ((,class (:foreground ,c5 :background ,c5-light :inherit variable-pitch))))
     `(outline-3 ((,class (:foreground ,c4 :background ,c4-light :inherit variable-pitch))))
     `(outline-4 ((,class (:foreground ,c3 :background ,c3-light :inherit variable-pitch))))
     `(outline-5 ((,class (:foreground ,c2 :background ,c2-light :inherit variable-pitch))))
     `(outline-6 ((,class (:foreground ,c1 :background ,c1-light :inherit variable-pitch))))
     `(outline-7 ((,class (:foreground ,c0 :background ,c0-light :inherit variable-pitch))))
     `(outline-8 ((,class (:foreground ,c6 :background ,c6-light :inherit variable-pitch))))
     `(outline-minor-0 ((,class (:background ,bg))))
     `(outline-minor-1 ((,class (:foreground ,c6-dim :background ,c6-light :inherit variable-pitch))))
     `(outline-minor-2 ((,class (:foreground ,c5-dim :background ,c5-light :inherit variable-pitch))))
     `(outline-minor-3 ((,class (:foreground ,c4-dim :background ,c4-light :inherit variable-pitch))))
     `(outline-minor-4 ((,class (:foreground ,c3-dim :background ,c3-light :inherit variable-pitch))))
     `(outline-minor-5 ((,class (:foreground ,c2-dim :background ,c2-light :inherit variable-pitch))))
     `(outline-minor-6 ((,class (:foreground ,c1-dim :background ,c1-light :inherit variable-pitch))))
     `(outline-minor-7 ((,class (:foreground ,c0-dim :background ,c0-light :inherit variable-pitch))))
     `(outline-minor-8 ((,class (:foreground ,c6-dim :background ,c6-light :inherit variable-pitch))))

;;;;;; markdown
     `(markdown-header-face-1 ((,class :foreground ,c6)))
     `(markdown-header-face-2 ((,class :foreground ,c5)))
     `(markdown-header-face-3 ((,class :foreground ,c4)))
     `(markdown-header-face-4 ((,class :foreground ,c3)))
     `(markdown-header-face-5 ((,class :foreground ,c2)))
     `(markdown-header-face-6 ((,class :foreground ,c1)))
     `(markdown-link-face ((,class (:inherit org-link))))
     `(markdown-code-face ((,class (:inherit font-lock-number-face))))

;;;;;; org
     `(org-archived                  ((,class (:foreground ,c3-dim))))
     `(org-clock-overlay             ((,class (:foreground ,c3-dim))))
     `(org-code                      ((,class (:foreground ,c4-dim))))
     `(org-column                    ((,class (:foreground ,c4-dim))))
     `(org-column-title              ((,class (:foreground ,c4-dim))))
     `(org-date                      ((,class (:foreground ,c4 :background ,c2-light))))
     `(org-date-selected             ((,class (:foreground ,c4-dim :background ,c4-light))))
     `(org-default                   ((,class (:foreground ,fg))))
     `(org-dispatcher-highlight      ((,class (:foreground ,c5-dark))))
     `(org-document-info             ((,class (:foreground ,c4 :background ,c6-light))))
     `(org-document-info-keyword     ((,class (:foreground ,c5 :background ,c5-light))))
     `(org-document-title            ((,class (:foreground ,c6 :background ,c4-light))))
     `(org-done                      ((,class (:underline (:color ,c0-dim :line-width -1)))))
     `(org-drawer                    ((,class (:inherit fixed-pitch :foreground ,c6-dim :background ,c0-light :box (:line-width 2 :style released-button)))))
     `(org-ellipsis                  ((,class (:inherit font-lock-builtin-face))))
     `(org-footnote                  ((,class (:foreground ,c2 :background ,c2-light))))
     `(org-formula                   ((,class (:foreground ,c4 :background ,c3-light))))
     `(org-headline-todo             ((,class (:background ,c2-light :weight bold))))
     `(org-headline-done             ((,class (:background ,c4-light :weight bold))))
     `(org-hide                      ((,class (:foreground ,bg))))
     `(org-indent                    ((,class (:foreground ,bg))))
     `(org-latex-and-related         ((,class (:foreground ,c3 :background ,c0-light))))
     `(org-link                      ((,class (:foreground ,c0 :background ,c2-light :underline t))))
     `(org-list-dt                   ((,class (:foreground ,c6 :background ,c6-light :weight bold))))
     `(org-macro                     ((,class (:foreground ,c2 :background ,c3-light))))
     `(org-meta-line                 ((,class (:foreground ,fg :background ,c1-light))))
     `(org-mode-line-clock           ((,class (:foreground ,c0-dim))))
     `(org-mode-line-clock-overrun   ((,class (:foreground ,c0-dim :background ,c4-dim))))
     `(org-priority                  ((,class (:foreground ,c5-dim :background ,c0-light))))
     `(org-property-value            ((,class (:foreground ,c4))))
     `(org-scheduled                 ((,class (:foreground ,c0-dim :background ,c0-light))))
     `(org-scheduled-previously      ((,class (:foreground ,c3-dim :background ,c0-light))))
     `(org-scheduled-today           ((,class (:foreground ,c6-dim :background ,c0-light))))
     `(org-sexp-date                 ((,class (:foreground ,c4-dim :background ,c0-light))))
     `(org-special-keyword           ((,class (:foreground ,c6 :background ,c0-light))))
     `(org-table                     ((,class (:foreground ,c6 :background ,c2-light))))
     `(org-table-header              ((,class (:foreground ,c6 :background ,c6-light :inherit bold))))
     `(org-tag                       ((,class (:foreground ,c1 :background ,c2-light))))
     `(org-tag-group                 ((,class (:foreground ,c1 :background ,c4-light))))
     `(org-target                    ((,class (:foreground ,c1 :background ,c6-light))))
     `(org-time-grid                 ((,class (:foreground ,c4-dim))))
     `(org-todo                      ((,class (:inherit (bold fixed-pitch) :underline (:color ,c3-dim :line-width -1)))))
     `(org-upcoming-deadline         ((,class (:foreground ,c0-dim :background ,c2-light))))
     `(org-upcoming-distant-deadline ((,class (:foreground ,c1-dim :background ,c2-light))))
     `(org-verbatim                  ((,class (:foreground ,c2))))
     `(org-verse                     ((,class (:foreground ,c5-dim))))
     `(org-warning                   ((,class (:foreground ,c6-dark :underline (:color ,c6-dark :line-width -1)))))

;;;;;;; agenda
     `(org-agenda-calendar-event   ((,class (:foreground ,c0))))
     `(org-agenda-calendar-sexp    ((,class (:foreground ,c0-dim))))
     `(org-agenda-clocking         ((,class (:foreground ,c1))))
     `(org-agenda-column-dateline  ((,class (:foreground ,c4-dim :background ,c0-light))))
     `(org-agenda-current-time     ((,class (:foreground ,c4-dim :background ,c4-light))))
     `(org-agenda-date             ((,class (:foreground ,c4-dim :background ,c2-light))))
     `(org-agenda-date-today       ((,class (:foreground ,c4 :background ,c6-light))))
     `(org-agenda-date-weekend     ((,class (:foreground ,c4 :background ,c6-light))))
     `(org-agenda-diary            ((,class (:foreground ,c5))))
     `(org-agenda-dimmed-todo-face ((,class (:background ,c4-dim))))
     `(org-agenda-done             ((,class (:foreground ,c6 :background ,c6-light))))
     `(org-agenda-filter-category  ((,class (:foreground ,c0-dim :background ,c0-light))))
     `(org-agenda-filter-effort    ((,class (:foreground ,c1-dim :background ,c0-light))))
     `(org-agenda-filter-regexp    ((,class (:foreground ,c2-dim :background ,c0-light))))
     `(org-agenda-filter-tags      ((,class (:foreground ,c3-dim :background ,c0-light))))
     `(org-agenda-restriction-lock ((,class (:foreground ,c4-dim))))
     `(org-agenda-structure        ((,class (:inherit variable-pitch :foreground ,c5-dim :height 1.2))))
     `(org-time-grid               ((,class (:foreground ,c6-dim))))

;;;;;;; block
     `(org-block-begin-line ((,class (:foreground ,c2 :background ,c3-light :weight normal :extend t :inherit variable-pitch))))
     `(org-block-end-line   ((,class (:foreground ,c4 :background ,c3-light :weight normal :extend t :inherit variable-pitch))))

;;;;;;; checkbox
     `(org-checkbox                 ((,class (:foreground ,c3-dim))))
     `(org-checkbox-statistics-done ((,class (:foreground ,c0-dim))))
     `(org-checkbox-statistics-todo ((,class (:foreground ,c6-dark))))

;;;;;;; level
     `(org-level-1 ((,class (:foreground ,c6 :background ,c6-light))))
     `(org-level-2 ((,class (:foreground ,c5 :background ,c5-light))))
     `(org-level-3 ((,class (:foreground ,c4 :background ,c4-light))))
     `(org-level-4 ((,class (:foreground ,c3 :background ,c3-light))))
     `(org-level-5 ((,class (:foreground ,c2 :background ,c2-light))))
     `(org-level-6 ((,class (:foreground ,c1 :background ,c1-light))))
     `(org-level-7 ((,class (:foreground ,c0 :background ,c0-light))))
     `(org-level-8 ((,class (:foreground ,c0-dark :background ,c0-light))))

;;;;;; paren
     `(show-paren-match            ((,class (:underline (:color ,c4-dim :line-width -1)))))
     `(show-paren-mismatch         ((,class (:underline (:color ,c6-dark :line-width -1)))))
     `(show-paren-match-expression ((,class (:background ,c6-light))))

;;;;;; sh
     `(sh-heredoc ((,class (:foreground ,c1 :background ,c3-light))))

;;;;;; shr
     `(shr-link ((,class (:inherit org-link))))
     `(shr-selected-link ((,class (:inherit org-link :background ,c4-light))))

;;;;;; git-gutter
     `(git-gutter:added       ((,class (:background ,c6-dim))))
     `(git-gutter:deleted     ((,class (:background ,c0-dim))))
     `(git-gutter:modified    ((,class (:background ,c3-dim))))
     `(git-gutter:unchanged   ((,class (:background ,c1-dim))))
     `(git-gutter:separator   ((,class (:background ,e1))))
     `(git-gutter-fr:added    ((,class (:inherit git-gutter:added))))
     `(git-gutter-fr:deleted  ((,class (:inherit git-gutter:deleted))))
     `(git-gutter-fr:modified ((,class (:inherit git-gutter:modified))))

;;;;;; diff-hl
     `(diff-hl-insert ((,class (:background ,c6-dim :foreground ,c6-dim))))
     `(diff-hl-delete ((,class (:background ,c0-dim :foreground ,c0-dim))))
     `(diff-hl-change ((,class (:background ,c3-dim :foreground ,c3-dim))))
     `(diff-hl-reverted-hunk-highlight ((,class (:background ,c6-dim))))
     `(diff-hl-dired-insert ((,class (:background ,c6-dim :foreground ,c6-dim))))
     `(diff-hl-dired-change ((,class (:background ,c0-dim :foreground ,c0-dim))))
     `(diff-hl-dired-delete ((,class (:background ,c3-dim :foreground ,c3-dim))))

;;;;;; which-key
     `(which-key-key-face ((,class (:foreground ,c6 :background ,c6-light :weight bold))))
     `(which-key-group-description-face ((,class (:foreground ,c3-light :background ,c3-dim))))
     `(which-key-command-description-face ((,class (:foreground ,c5 :background ,c3-light))))
     `(which-key-separator-face ((,class (:foreground ,c1 :background ,bg))))

;;;;;; company
     `(company-tooltip-selection  ((,class (:foreground ,fg :underline (:color ,c2-dim) :inherit bold))))
     `(company-tooltip-common     ((,class (:foreground ,fg))))
     `(company-tooltip-annotation ((,class (:foreground ,c2-dark))))
     `(company-tooltip            ((,class (:foreground ,fg :background ,c5-light :box (:color ,c5)))))
     `(company-scrollbar-bg       ((,class (:background ,bg))))
     `(company-scrollbar-fg       ((,class (:background ,c6))))

;;;;;; message
     `(message-header-name    ((,class (:foreground ,c4-dim :inherit variable-pitch))))
     `(message-header-cc      ((,class (:foreground ,c0-dim :inherit variable-pitch))))
     `(message-header-to      ((,class (:foreground ,c1-dim :inherit variable-pitch))))
     `(message-header-subject ((,class (:foreground ,c4 :inherit variable-pitch))))

;;;;;; elfeed
     `(elfeed-show-tag-face            ((,class (:foreground ,c4))))
     `(elfeed-show-misc-face           ((,class (:foreground ,fg))))
     `(elfeed-show-feed-face           ((,class (:foreground ,fg))))
     `(elfeed-show-title-face          ((,class (:foreground ,fg :inherit variable-pitch))))
     `(elfeed-show-author-face         ((,class (:foreground ,c1))))
     `(elfeed-log-date-face            ((,class (:foreground ,c2-dim))))
     `(elfeed-search-tag-face          ((,class (:inherit elfeed-show-tag-face))))
     `(elfeed-search-feed-face         ((,class (:inherit elfeed-show-feed-face))))
     `(elfeed-search-date-face         ((,class (:inherit elfeed-log-date-face))))
     `(elfeed-search-title-face        ((,class (:inherit elfeed-show-title-face))))
     `(elfeed-search-filter-face       ((,class (:foreground ,c0-dim :inherit variable-pitch :height 1.3))))
     `(elfeed-log-info-level-face      ((,class (:foreground ,c2-dark))))
     `(elfeed-log-warn-level-face      ((,class (:foreground ,c4-dark))))
     `(elfeed-log-debug-level-face     ((,class (:foreground ,c1-dark))))
     `(elfeed-log-error-level-face     ((,class (:foreground ,c0-dark))))
     `(elfeed-search-last-update-face  ((,class (:foreground ,fg :background ,c1-light :inherit variable-pitch))))
     `(elfeed-search-unread-count-face ((,class (:foreground ,fg :background ,c2-light :inherit variable-pitch))))
     `(elfeed-search-unread-title-face ((,class (:inherit bold))))

;;;;;; transient
     `(transient-unreachable       ((,class (:foreground ,c6-light))))
     `(transient-inactive-value    ((,class (:foreground ,c2))))
     `(transient-inactive-argument ((,class (:foreground ,c4))))
     `(transient-value             ((,class (:background ,c2-light :inherit transient-inactive-value))))
     `(transient-argument          ((,class (:background ,c4-light :inherit transient-inactive-argument))))
     `(transient-inapt-suffix      ((,class (:foreground ,c6-light :inherit italic))))
     `(transient-heading           ((,class (:foreground ,c6 :background ,c6-light :inherit variable-pitch :height 1.2 :extend t))))
     `(transient-active-infix      ((,class (:inherit lazy-highlight :underline t))))
     `(transient-key               ((,class (:foreground ,c6 :inherit bold))))
     `(transient-key-exit          ((,class (:foreground ,c4-dark :inherit bold))))
     `(transient-key-noop          ((,class (:foreground ,c1-dim :inherit bold))))
     `(transient-key-stay          ((,class (:foreground ,c4-dim :inherit bold))))
     `(transient-key-return        ((,class (:foreground ,c0-dim :inherit bold))))
     `(transient-mismatched-key    ((,class (:foreground ,c1-dim :inherit bold))))
     `(transient-nonstandard-key   ((,class (:foreground ,c3-dark :inherit bold))))
     `(transient-unreachable-key   ((,class (:foreground ,c6-light))))

;;;;;; magit
     `(magit-section-heading        ((,class (:foreground ,c6))))
     `(magit-section-highlight      ((,class (:background ,c5-light))))
     `(magit-hash                   ((,class (:foreground ,c4 :background ,c4-light))))
     `(magit-branch-local           ((,class (:foreground ,c2 :background ,c2-light :inherit variable-pitch))))
     `(magit-branch-remote          ((,class (:foreground ,c4 :background ,c4-light :inherit variable-pitch))))
     `(magit-diff-file-heading      ((,class (:foreground ,c6 :background ,c6-light :height 1.15 :inherit (bold variable-pitch)))))
     `(magit-diff-removed           ((,class (:background ,c6-light))))
     `(magit-diff-added             ((,class (:background ,c0-light))))
     `(magit-diff-removed-highlight ((,class (:foreground ,c6-dark :inherit magit-diff-removed))))
     `(magit-diff-added-highlight   ((,class (:foreground ,c0-dark :inherit magit-diff-added))))
     `(magit-diff-context           ((,class (:foreground ,fg :background ,bg))))
     `(magit-diff-context-highlight ((,class (:foreground ,c0 :background ,bg))))
     `(magit-diff-hunk-heading      ((,class (:foreground ,c0 :background ,c6-light))))
     `(magit-diff-hunk-heading-highlight ((,class (:foreground ,c0 :background ,c6))))
     `(magit-log-author             ((,class (:foreground ,c1-dark))))
     `(magit-log-date               ((,class (:foreground ,c2-dim))))
     `(magit-log-graph              ((,class (:foreground ,c5-dark))))
     `(magit-tag                    ((,class (:foreground ,c5-dim :underline t :inherit variable-pitch))))
     `(magit-popup-disabled-argument((,class (:foreground ,c3-light))))
     `(magit-blame-margin           ((,class (:foreground ,c0 :background ,c0-light))))
     `(magit-blame-heading          ((,class (:foreground ,c2 :background ,c0-light))))
     `(magit-blame-highlight        ((,class (:foreground ,c4 :background ,c0-light))))

;;;;;; diff
     `(diff-refine-removed ((,class (:foreground ,c6-dark :background ,c3-light :inherit bold-italic))))
     `(diff-refine-changed ((,class (:foreground ,c3-dark :background ,c3-light :inherit bold-italic))))
     `(diff-refine-added   ((,class (:foreground ,c0-dark :background ,c3-light :inherit bold-italic))))

;;;;;; orderless
     `(orderless-match-face-0 ((,class (:foreground ,c6 :background ,c6-light :inherit bold))))
     `(orderless-match-face-1 ((,class (:foreground ,c4 :background ,c4-light :inherit bold))))
     `(orderless-match-face-2 ((,class (:foreground ,c2 :background ,c2-light :inherit bold))))
     `(orderless-match-face-3 ((,class (:foreground ,c0 :background ,c0-light :inherit bold))))

;;;;;; ediff
     `(ediff-odd-diff-Ancestor ((,class (:background ,c6-light))))
     `(ediff-odd-diff-C ((,class (:background ,c5-light))))
     `(ediff-odd-diff-B ((,class (:background ,c3-light))))
     `(ediff-odd-diff-A ((,class (:background ,c1-light))))
     `(ediff-even-diff-Ancestor ((,class (:background ,c6-light))))
     `(ediff-even-diff-C ((,class (:background ,c4-light))))
     `(ediff-even-diff-B ((,class (:background ,c2-light))))
     `(ediff-even-diff-A ((,class (:background ,c0-light))))

;;;;;; vertico
     `(vertico-current     ((,class (:underline (:line-width -1 :color ,c5) :inherit bold))))
     `(vertico-group-title ((,class (:foreground ,c6 :background ,c6-light :inherit variable-pitch))))
     `(vertico-quick1      ((,class (:background ,c0-light :foreground ,c0))))
     `(vertico-quick2      ((,class (:background ,c6-light :foreground ,c6))))

;;;;;; olivetti
     `(olivetti-fringe ((,class (:background ,bg))))

;;;;;; flycheck
     `(flycheck-info    ((,class (:underline (:line-width -1 :color ,c0-dim)))))
     `(flycheck-error   ((,class (:underline (:line-width -1 :color ,c3-dim)))))
     `(flycheck-warning ((,class (:underline (:line-width -1 :color ,c6-dim)))))

     `(flycheck-posframe-face            ((,class (:inherit popup-tip-face))))
     `(flycheck-posframe-info-face       ((,class (:inherit (popup-tip-face variable-pitch flycheck-info) :foreground ,c3))))
     `(flycheck-posframe-error-face      ((,class (:inherit (popup-tip-face variable-pitch flycheck-error) :foreground ,c6))))
     `(flycheck-posframe-border-face     ((,class (:inherit popup-tip-face))))
     `(flycheck-posframe-warning-face    ((,class (:inherit (popup-tip-face variable-pitch flycheck-warning) :foreground ,c0))))
     `(flycheck-posframe-background-face ((,class (:inherit popup-tip-face))))

;;;;;; flymake
     `(flymake-note    ((,class (:underline (:line-width -1 :color ,c0-dim)))))
     `(flymake-error   ((,class (:underline (:line-width -1 :color ,c3-dim)))))
     `(flymake-warning ((,class (:underline (:line-width -1 :color ,c6-dim)))))
     `(flymake-note-echo    ((,class (:inherit flymake-note))))
     `(flymake-error-echo   ((,class (:inherit flymake-error))))
     `(flymake-warning-echo ((,class (:inherit flymake-warning))))
     `(flymake-note-echo-at-eol    ((,class (:inherit flymake-note))))
     `(flymake-error-echo-at-eol   ((,class (:inherit flymake-error))))
     `(flymake-warning-echo-at-eol ((,class (:inherit flymake-warning))))
     `(flymake-end-of-line-diagnostics-face ((,class (:inherit region font-lock-keyword-face))))

;;;;;; tree-sitter
     `(tree-sitter-hl-face:embedded           ((,class (:foreground ,c0-dim))))
     `(tree-sitter-hl-face:type               ((,class (:inherit (font-lock-type-face underline)))))
     `(tree-sitter-hl-face:type.argument      ((,class (:foreground ,c1-dim :inherit underline))))
     `(tree-sitter-hl-face:type.parameter     ((,class (:foreground ,c1 :inherit underline))))
     `(tree-sitter-hl-face:type.builtin       ((,class (:foreground ,c1-dark :inherit underline))))
     `(tree-sitter-hl-face:type.super         ((,class (:foreground ,c2-dim :inherit underline))))
     `(tree-sitter-hl-face:punctuation        ((,class (:foreground ,c3-dim))))
     `(tree-sitter-hl-face:attribute          ((,class (:foreground ,c4-dim))))
     `(tree-sitter-hl-face:method             ((,class (:foreground ,c5-dim))))
     `(tree-sitter-hl-face:function           ((,class (:inherit font-lock-function-name-face))))
     `(tree-sitter-hl-face:function.call      ((,class (:foreground ,c6-dim))))
     `(tree-sitter-hl-face:function.macro     ((,class (:inherit font-lock-preprocessor-face))))
     `(tree-sitter-hl-face:function.builtin   ((,class (:foreground ,c6))))
     `(tree-sitter-hl-face:function.special   ((,class (:foreground ,c6-dark))))
     `(tree-sitter-hl-face:number             ((,class (:inherit highlight-numbers-number))))
     `(tree-sitter-hl-face:variable           ((,class (:inherit font-lock-variable-name-face))))
     `(tree-sitter-hl-face:variable.builtin   ((,class (:foreground ,c3-dim))))
     `(tree-sitter-hl-face:variable.parameter ((,class (:foreground ,c3-dark))))
     `(tree-sitter-hl-face:variable.special   ((,class (:foreground ,c3-dim))))

;;;;;; tabs
     `(tab-line                   ((,class (:inherit mode-line))))
     `(tab-bar                    ((,class (:inherit mode-line))))
     `(tab-bar-tab                ((,class (:inherit mode-line))))
     `(tab-bar-tab-inactive       ((,class (:inherit mode-line))))

;;;;;; highlight-indent-guides
     `(highlight-indent-guides-odd-face             ((,class (:foreground ,c0-dim))))
     `(highlight-indent-guides-stack-odd-face       ((,class (:foreground ,c3-dim))))
     `(highlight-indent-guides-top-odd-face         ((,class (:foreground ,c6-dim))))
     `(highlight-indent-guides-even-face            ((,class (:foreground ,c0-dim))))
     `(highlight-indent-guides-stack-even-face      ((,class (:foreground ,c3-dim))))
     `(highlight-indent-guides-top-even-face        ((,class (:foreground ,c6-dim))))
     `(highlight-indent-guides-character-face       ((,class (:foreground ,c1-dim))))
     `(highlight-indent-guides-stack-character-face ((,class (:foreground ,c2-dim))))
     `(highlight-indent-guides-top-character-face   ((,class (:foreground ,c4-dim))))

;;;;;; highlight-indentation
     `(highlight-indentation-face                ((,class (:background ,c4-light))))
     `(highlight-indentation-guides-odd-face     ((,class (:inherit highlight-indentation-face))))
     `(highlight-indentation-guides-even-face    ((,class (:inherit highlight-indentation-face))))
     `(highlight-indentation-current-column-face ((,class (:background ,c2-light))))

;;;;;; writegood
     `(writegood-weasels-face       ((,class (:underline (:line-width -1 :color ,c6-dark)))))
     `(writegood-duplicates-face    ((,class (:underline (:line-width -1 :color ,c3-dim)))))
     `(writegood-passive-voice-face ((,class (:underline (:line-width -1 :color ,c0-dim)))))

;;;;;; eglot
     `(eglot-highlight-symbol-face  ((,class (:background ,c1-light :inherit bold))))

;;;;;; lsp-mode
     `(lsp-ui-peek-list ((,class :background ,c0-light)))

     `(lsp-face-highlight-write   ((,class :background ,c2-light)))
     `(lsp-face-highlight-textual ((,class :inherit (lsp-face-highlight-write))))
     `(lsp-face-highlight-read    ((,class :inherit (lsp-face-highlight-write) :underline (:line-width -1 :color ,c6-dark))))

     `(lsp-face-semhl-number   ((,class :inherit (font-lock-constant-face))))
     `(lsp-face-semhl-constant ((,class :inherit (font-lock-constant-face))))

     `(lsp-face-semhl-regexp ((,class :inherit (font-lock-string-face bold))))
     `(lsp-face-semhl-string ((,class :inherit (font-lock-string-face))))

     `(lsp-face-semhl-enum           ((,class :inherit (font-lock-keyword-face))))
     `(lsp-face-semhl-type           ((,class :inherit (font-lock-keyword-face underline))))
     `(lsp-face-semhl-class          ((,class :inherit (font-lock-keyword-face underline italic))))
     `(lsp-face-semhl-struct         ((,class :inherit (font-lock-keyword-face italic))))
     `(lsp-face-semhl-interface      ((,class :inherit (font-lock-keyword-face bold-italic))))
     `(lsp-face-semhl-namespace      ((,class :inherit (font-lock-keyword-face bold-italic underline))))
     `(lsp-face-semhl-type-parameter ((,class :inherit (font-lock-keyword-face bold underline))))

     `(lsp-face-semhl-event     ((,class :inherit (font-lock-variable-name-face underline))))
     `(lsp-face-semhl-member    ((,class :inherit (font-lock-variable-name-face bold-italic))))
     `(lsp-face-semhl-property  ((,class :inherit (font-lock-variable-name-face italic))))
     `(lsp-face-semhl-variable  ((,class :inherit (font-lock-variable-name-face bold))))
     `(lsp-face-semhl-parameter ((,class :inherit (font-lock-variable-name-face underline italic))))

     `(lsp-face-semhl-label   ((,class :inherit (font-lock-comment-face underline))))
     `(lsp-face-semhl-comment ((,class :inherit (font-lock-comment-face))))

     `(lsp-face-semhl-method     ((,class :inherit (font-lock-function-name-face italic))))
     `(lsp-face-semhl-function   ((,class :inherit (font-lock-function-name-face underline bold))))
     `(lsp-face-semhl-operator   ((,class :inherit (font-lock-function-name-face bold-italic))))
     `(lsp-face-semhl-definition ((,class :inherit (font-lock-function-name-face bold))))

     `(lsp-face-semhl-static  ((,class :inherit (font-lock-keyword-face underline))))
     `(lsp-face-semhl-keyword ((,class :inherit (font-lock-keyword-face bold))))

     `(lsp-face-semhl-default-library ((,class :inherit (font-lock-builtin-face) :underline (:line-width -1 :color ,c3))))

;;;;;; rjsx
     `(rjsx-tag-bracket-face ((,class :inherit font-lock-keyword-face)))

;;;;;; web-mode
     `(web-mode-html-tag-bracket-face ((,class :inherit font-lock-keyword-face)))

;;;;;; corfu
     `(corfu-bar       ((,class (:background ,c6-dim))))
     `(corfu-border    ((,class (:background ,c6-dim))))
     `(corfu-current   ((,class (:inherit region))))
     `(corfu-default   ((,class (:background ,bg :foreground ,fg))))
     `(corfu-popupinfo ((,class (:background ,c0-light :foreground ,fg))))
     `(corfu-candidate-overlay-face ((,class (:inherit bold :foreground ,c6-dim))))
     `(corfu-candidate-overlay-face-exact-match ((,class (:inherit (bold underline) :foreground ,c6-dim))))

;;;;;; evil-goggles
     `(evil-goggles-join-face           ((,class (:background ,c0-dim))))
     `(evil-goggles-yank-face           ((,class (:background ,c1-dim))))
     `(evil-goggles-paste-face          ((,class (:background ,c2-dim))))
     `(evil-goggles-change-face         ((,class (:background ,c3-dim))))
     `(evil-goggles-delete-face         ((,class (:background ,c4-dim))))
     `(evil-goggles-surround-face       ((,class (:background ,c5-dim))))
     `(evil-goggles-commentary-face     ((,class (:background ,c6-dim))))
     `(evil-goggles-nerd-commenter-face ((,class (:inherit evil-goggles-commentary-face))))

;;;;;; vundo
     `(vundo-node        ((,class (:foreground ,c3))))
     `(vundo-stem        ((,class (:foreground ,c3-dim))))
     `(vundo-saved       ((,class (:foreground ,c0))))
     `(vundo-default     ((,class (:foreground ,c6))))
     `(vundo-highlight   ((,class (:background ,c6-light))))
     `(vundo-last-saved  ((,class (:foreground ,c6-dark))))
     `(vundo-branch-stem ((,class (:foreground ,c5-dim))))

;;;;;; eldoc-box
     `(eldoc-box-border ((,class (:background ,c6))))
     `(eldoc-box-body   ((,class (:background ,c5-dim))))

;;;;;; tuareg (OCaml)
     `(tuareg-opam-error-face                      ((,class (:inherit error :background ,c0-light))))
     `(tuareg-font-lock-error-face                 ((,class (:inherit error))))
     `(tuareg-font-lock-operator-face              ((,class (:inherit font-lock-operator-face))))
     `(tuareg-font-lock-governing-face             ((,class (:inherit font-lock-builtin-face))))
     `(tuareg-font-lock-multistage-face            ((,class (:inherit font-lock-misc-punctuation-face))))
     `(tuareg-font-double-semicolon-face           ((,class (:inherit font-lock-number-face))))
     `(tuareg-font-lock-constructor-face           ((,class (:inherit font-lock-punctuation-face))))
     `(tuareg-font-lock-line-number-face           ((,class (:inherit line-number))))
     `(tuareg-font-lock-doc-verbatim-face          ((,class (:inherit font-lock-property-use-face))))
     `(tuareg-font-lock-interactive-output-face    ((,class (:background ,c4-light :inherit font-lock-doc-face))))
     `(tuareg-font-lock-extension-node-face        ((,class (:inherit tuareg-font-lock-infix-extension-node-face))))
     `(tuareg-font-lock-interactive-directive-face ((,class (:background ,c4-light :inherit font-lock-doc-face))))

;;;;;; caml
     `(caml-types-def-face   ((,class (:background ,c3-light :inherit font-lock-function-name-face))))
     `(caml-types-occ-face   ((,class (:background ,c3-light :inherit font-lock-builtin-face))))
     `(caml-types-expr-face  ((,class (:background ,c3-light :inherit font-lock-keyword-face))))
     `(caml-types-scope-face ((,class (:background ,c3-light :inherit font-lock-property-use-face))))
     `(caml-types-typed-face ((,class (:background ,c3-light :inherit font-lock-type-face))))

;;;;;; merlin
     `(merlin-type-face ((,class (:inherit font-lock-type-face))))
     `(merlin-compilation-error-face ((,class (:inherit error))))
     `(merlin-compilation-warning-face ((,class (:inherit font-lock-warning-face))))

;;;;;; breadcrumb
     `(breadcrumb-face                ((,class (:background ,bg :foreground ,fg :inherit variable-pitch :height 0.9))))
     `(breadcrumb-imenu-leaf-face     ((,class (:background ,c0-light :foreground ,c6-dim :inherit variable-pitch))))
     `(breadcrumb-imenu-crumbs-face   ((,class (:background ,c3-light :foreground ,c4-dim :inherit variable-pitch))))
     `(breadcrumb-project-base-face   ((,class (:background ,c5-light :foreground ,c1-dim :inherit variable-pitch))))
     `(breadcrumb-project-leaf-face   ((,class (:background ,c0-light :foreground ,c6-dim :inherit variable-pitch))))
     `(breadcrumb-project-crumbs-face ((,class (:background ,c3-light :foreground ,c4-dim :inherit variable-pitch)))))))

;;;; Rebug
(defun hyperstitional-themes-rebug-generate (theme-name palette)
  "Generate a Rebug theme named THEME-NAME with PALETTE."
  (let ((class '((class color)))
        (ra (cdr (assoc 'ra palette)))
        (rb (cdr (assoc 'rb palette)))
        (rc (cdr (assoc 'rc palette)))
        (rd (cdr (assoc 'rd palette)))
        (re (cdr (assoc 're palette)))
        (rf (cdr (assoc 'rf palette)))
        (rg (cdr (assoc 'rg palette)))
        (ga (cdr (assoc 'ga palette)))
        (gb (cdr (assoc 'gb palette)))
        (gc (cdr (assoc 'gc palette)))
        (gd (cdr (assoc 'gd palette)))
        (ge (cdr (assoc 'ge palette)))
        (gf (cdr (assoc 'gf palette)))
        (gg (cdr (assoc 'gg palette)))
        (ba (cdr (assoc 'ba palette)))
        (bb (cdr (assoc 'bb palette)))
        (bc (cdr (assoc 'bc palette)))
        (bd (cdr (assoc 'bd palette)))
        (be (cdr (assoc 'be palette)))
        (bf (cdr (assoc 'bf palette)))
        (bg (cdr (assoc 'bg palette)))
        (wa (cdr (assoc 'wa palette)))
        (wb (cdr (assoc 'wb palette)))
        (wc (cdr (assoc 'wc palette)))
        (wd (cdr (assoc 'wd palette)))
        (we (cdr (assoc 'we palette)))
        (wf (cdr (assoc 'wf palette)))
        (wg (cdr (assoc 'wg palette)))
        (ww (cdr (assoc 'ww palette))))
;;;;; definitions
;; Ignored:
;; - Ivy
;; - Swiper
;; - Company
;; - Elfeed
;; - Olivetti
;; - Tree-Sitter
;; - lsp-mode
;; - Tuareg
;; - Caml
;; - Merlin

    (custom-theme-set-faces
     theme-name
     `(fringe                     ((,class (:background ,ww))))
     `(vertical-border            ((,class (:background ,ww :foreground ,ww))))
     `(window-divider             ((,class (:background ,ww :foreground ,ww))))
     `(window-divider-first-pixel ((,class (:background ,ww :foreground ,ww))))
     `(window-divider-last-pixel  ((,class (:background ,ww :foreground ,ww))))

     `(default ((,class (:foreground ,wa :background ,ww))))
     `(button  ((,class (:background ,be :foreground ,wc :box (:line-width 2 :color ,bb :style released-button)))))
     `(hl-line ((,class (:background ,bg))))

     `(error                ((,class (:foreground ,ra :background ,rg))))
     `(highlight            ((,class (:background ,bd))))
     `(match                ((,class (:foreground ,ga :background ,gg :slant italic))))
     `(menu                 ((,class (:foreground ,rf))))
     `(minibuffer-prompt    ((,class (:foreground ,gf :slant italic))))
     `(read-multiple-choice ((,class (:foreground ,gf :slant italic))))
     `(region               ((,class (:background ,rg))))
     `(secondary-selection  ((,class (:background ,bg))))
     `(shadow               ((,class (:foreground ,we))))
     `(success              ((,class (:foreground ,ga))))
     `(warning              ((,class (:foreground ,ba))))
     `(cursor               ((,class (:background ,ga :underline (:color ,rc)))))
     `(whitespace-tab       ((,class (:background ,gg))))
     `(escape-glyph         ((,class (:foreground ,re))))
     `(fill-column-indicator ((,class (:foreground ,gg))))

     `(custom-button         ((,class (:foreground ,wb :background ,bc :box (:line-width 2 :color ,bg :style released-button)))))
     `(custom-button-pressed ((,class (:foreground ,wb :background ,bc :box (:line-width 2 :color ,bg :style pressed-button)))))

;;;;;; popup
     `(popup-face      ((,class (:inherit button :foreground ,rc))))
     `(popup-menu-face ((,class (:inherit popup-face))))
     `(popup-tip-face  ((,class (:inherit (popup-face variable-pitch)))))

;;;;;; font-lock
     `(font-lock-builtin-face              ((,class (:foreground ,ga :weight bold))))
     `(font-lock-comment-face              ((,class (:foreground ,bb :background ,bg))))
     `(font-lock-comment-delimiter-face    ((,class (:foreground ,bb :background ,bg :weight bold))))
     `(font-lock-constant-face             ((,class (:foreground ,ba :weight bold))))
     `(font-lock-function-name-face        ((,class (:foreground ,ra :slant italic))))
     `(font-lock-keyword-face              ((,class (:foreground ,rb :weight bold))))
     `(font-lock-string-face               ((,class (:foreground ,bb :underline (:color ,bb :style dots :position 0)))))
     `(font-lock-type-face                 ((,class (:foreground ,gb :underline (:color ,gb :style dots :position 0)))))
     `(font-lock-variable-name-face        ((,class (:foreground ,gc :underline (:color ,gc :style dashes :position 0)))))
     `(font-lock-variable-use-face         ((,class (:foreground ,gc :slant italic :weight bold :underline (:color ,gc :style dashes :position 0)))))
     `(font-lock-property-name-face        ((,class (:foreground ,rd :underline (:color ,rd :style dashes :line-width -1)))))
     `(font-lock-property-use-face         ((,class (:foreground ,rd :slant italic :weight bold :underline (:color ,rd :style dashes :position 0)))))
     `(font-lock-punctuation-face          ((,class (:foreground ,be))))
     `(font-lock-misc-punctuation-face     ((,class (:foreground ,be :slant italic :weight bold))))
     `(font-lock-escape-face               ((,class (:foreground ,rd))))
     `(font-lock-regexp-face               ((,class (:foreground ,wc :background ,bc :weight bold))))
     `(font-lock-bracket-face              ((,class (:foreground ,wf))))
     `(font-lock-operator-face             ((,class (:foreground ,gc))))
     `(font-lock-delimiter-face            ((,class (:foreground ,re))))
     `(font-lock-doc-face                  ((,class (:foreground ,ra :background ,gg :slant italic))))
     `(font-lock-doc-markup-face           ((,class (:foreground ,ra :background ,gf :slant italic))))
     `(font-lock-warning-face              ((,class (:foreground ,ra :background ,rg :weight bold))))
     `(font-lock-preprocessor-face         ((,class (:foreground ,ra :background ,bg :weight bold))))
     `(font-lock-negation-char-face        ((,class (:foreground ,bd :background ,rd))))
     `(font-lock-number-face               ((,class (:foreground ,rc))))
     `(font-lock-regexp-grouping-construct ((,class (:inherit font-lock-regexp-face :underline t))))
     `(font-lock-regexp-grouping-backslash ((,class (:inherit font-lock-regexp-face :underline t))))

;;;;;; Header line and mode line
     `(mode-line             ((,class (:inherit variable-pitch :foreground ,wb :background ,be))))
     `(mode-line-buffer-id   ((,class (:inherit variable-pitch :foreground ,ba))))
     `(mode-line-emphasis    ((,class (:inherit variable-pitch :foreground ,ra))))
     `(mode-line-highlight   ((,class (:inherit variable-pitch :foreground ,ga))))
     `(mode-line-inactive    ((,class (:inherit variable-pitch :foreground ,wb :background ,bg))))
     `(header-line           ((,class (:inherit mode-line))))
     `(header-line-inactive  ((,class (:inherit mode-line-inactive))))
     `(header-line-highlight ((,class (:inherit mode-line-highlight))))

;;;;;; tabs
     `(tab-line                   ((,class (:inherit mode-line))))
     `(tab-bar                    ((,class (:inherit mode-line))))
     `(tab-bar-tab                ((,class (:inherit mode-line))))
     `(tab-bar-tab-inactive       ((,class (:inherit mode-line-inactive))))

;;;;;; Info mode
     `(info-quoted       ((,class (:foreground ,ga :background ,gf :inherit fixed-pitch))))
     `(info-header-node  ((,class (:foreground ,re :weight bold :underline t))))
     `(info-header-xref  ((,class (:foreground ,bc :background ,bg :underline t))))
     `(info-node         ((,class (:foreground ,re))))
     `(info-index-match  ((,class (:foreground ,ga :background ,gg))))
     `(info-menu-header  ((,class (:foreground ,rb :background ,rf :weight bold :underline t))))
     `(info-menu-star    ((,class (:foreground ,ba))))
     `(info-title-1      ((,class (:foreground ,ga :background ,bg :weight bold :underline (:style double-line :color ,ga :position 0)))))
     `(info-title-2      ((,class (:foreground ,ba :background ,bg :weight bold :underline (:style double-line :color ,ba :position 0)))))
     `(info-title-3      ((,class (:foreground ,ra :background ,bg :weight bold :underline (:style double-line :color ,ra :position 0)))))
     `(info-title-4      ((,class (:foreground ,wa :background ,bg :weight bold :underline (:style double-line :color ,wa :position 0)))))
     `(info-xref         ((,class (:foreground ,bc :background ,bg :underline (:style dots :position 0)))))
     `(info-xref-visited ((,class (:foreground ,rc :background ,rg :underline (:style dots :position 0)))))
     `(helpful-heading ((,class (:inherit variable-pitch :foreground ,ga :background ,wg :height 1.1 :underline t))))
     `(help-key-binding ((,class (:inherit button))))

;;;;;; evil
     `(evil-ex-info                   ((,class (:foreground ,ra :slant italic))))
     `(evil-ex-search                 ((,class (:foreground ,gc :background ,rg :weight bold))))
     `(evil-ex-substitute-matches     ((,class (:foreground ,ra :strike-through t :weight bold))))
     `(evil-ex-substitute-replacement ((,class (:foreground ,ga :weight bold))))

;;;;;; diredfl
     `(diredfl-dir-name               ((,class (:foreground ,ra :background ,rg :weight bold :inherit variable-pitch))))
     `(diredfl-number                 ((,class (:foreground ,ga :background ,gf))))
     `(diredfl-symlink                ((,class (:foreground ,bf :background ,ba))))
     `(diredfl-no-priv                ((,class (:foreground ,wf))))
     `(diredfl-dir-priv               ((,class (:foreground ,ra :background ,rg :underline (:style dots :position 0)))))
     `(diredfl-read-priv              ((,class (:foreground ,ba :background ,bg :underline (:style dots :position 0)))))
     `(diredfl-rare-priv              ((,class (:foreground ,ga :background ,gg :underline (:style dots :position 0)))))
     `(diredfl-link-priv              ((,class (:foreground ,ra :background ,rg :underline (:style dots :position 0)))))
     `(diredfl-exec-priv              ((,class (:foreground ,ga :background ,gg :underline (:style dots :position 0)))))
     `(diredfl-write-priv             ((,class (:foreground ,ga :background ,gg :underline (:style dots :position 0)))))
     `(diredfl-other-priv             ((,class (:foreground ,ba :background ,bg :underline (:style dots :position 0)))))
     `(diredfl-date-time              ((,class (:foreground ,wb :underline t))))
     `(diredfl-file-name              ((,class (:foreground ,ba :inherit variable-pitch))))
     `(diredfl-file-suffix            ((,class (:foreground ,ga :inherit variable-pitch))))
     `(diredfl-dir-heading            ((,class (:foreground ,ra :background ,rg :inherit variable-pitch :weight bold :underline t :height 1.1))))
     `(diredfl-autofile-name          ((,class (:inherit diredfl-file-name :underline t))))
     `(diredfl-flag-mark              ((,class (:inherit region :foreground ,ra))))
     `(diredfl-flag-mark-line         ((,class (:slant italic :underline ,ra))))
     `(diredfl-executable-tag         ((,class (:inherit diredfl-file-name))))
     `(diredfl-ignored-file-name      ((,class (:foreground ,wc))))
     `(diredfl-deletion               ((,class (:foreground ,ga :background ,rg))))
     `(diredfl-deletion-file-name     ((,class (:foreground ,ga :slant italic :strike-through ,ra))))
     `(diredfl-tagged-autofile-name   ((,class (:inherit diredfl-file-name :underline t))))
     `(diredfl-compressed-file-name   ((,class (:inherit diredfl-file-name))))
     `(diredfl-compressed-file-suffix ((,class (:inherit diredfl-file-name))))

;;;;;; dired-subtree
     `(dired-subtree-depth-1-face ((,class (:background ,bg))))
     `(dired-subtree-depth-2-face ((,class (:background ,gg))))
     `(dired-subtree-depth-3-face ((,class (:background ,bf))))
     `(dired-subtree-depth-4-face ((,class (:background ,gf))))
     `(dired-subtree-depth-5-face ((,class (:background ,be))))
     `(dired-subtree-depth-6-face ((,class (:background ,ge))))

;;;;;; rainbow-delimiter
     `(rainbow-delimiters-base-face       ((,class (:foreground ,ba :weight bold))))
     `(rainbow-delimiters-depth-1-face    ((,class (:foreground ,gc :weight bold))))
     `(rainbow-delimiters-depth-2-face    ((,class (:foreground ,rc :weight bold))))
     `(rainbow-delimiters-depth-3-face    ((,class (:foreground ,bc :weight bold))))
     `(rainbow-delimiters-depth-4-face    ((,class (:foreground ,ge :weight bold))))
     `(rainbow-delimiters-depth-5-face    ((,class (:foreground ,re :weight bold))))
     `(rainbow-delimiters-depth-6-face    ((,class (:foreground ,be :weight bold))))
     `(rainbow-delimiters-depth-7-face    ((,class (:foreground ,gf :weight bold))))
     `(rainbow-delimiters-depth-8-face    ((,class (:foreground ,rf :weight bold))))
     `(rainbow-delimiters-depth-9-face    ((,class (:foreground ,bf :weight bold))))
     `(rainbow-delimiters-unmatched-face  ((,class (:foreground ,ga :underline (:color ,rg :position 0 :style dots)))))
     `(rainbow-delimiters-mismatched-face ((,class (:foreground ,ba :underline (:color ,rg :position 0 :style dots)))))
     `(rainbow-delimiters-base-error-face ((,class (:foreground ,ra :underline (:color ,rg :position 0 :style dots)))))

;;;;;; Line Numbers
     `(line-number              ((,class (:foreground ,ga :background ,bg))))
     `(line-number-current-line ((,class (:foreground ,ga :background ,gf :weight bold :box (:line-width -1 :color ,ga)))))

;;;;;; isearch, occur
     `(isearch        ((,class (:foreground ,ba :background ,bg :slant italic))))
     `(isearch-fail   ((,class (:background ,rg :slant italic))))
     `(lazy-highlight ((,class (:background ,ge :slant italic))))
     `(query-replace  ((,class (:foreground ,rb :background ,gg))))

;;;;;; xref
     `(xref-file-header  ((,class (:foreground ,ba :weight bold :height 1.15 :inherit variable-pitch))))
     `(xref-match        ((,class (:foreground ,ba :background ,bg :underline t))))
     `(xref-line-number  ((,class (:foreground ,ga :weight bold))))

;;;;;; imenu-list
     `(imenu-list-entry-face            ((,class (:inherit variable-pitch :foreground ,ba :background ,bg))))
     `(imenu-list-entry-face-3          ((,class (:inherit variable-pitch :foreground ,wa))))
     `(imenu-list-entry-face-2          ((,class (:inherit variable-pitch :foreground ,ga))))
     `(imenu-list-entry-face-1          ((,class (:inherit variable-pitch :foreground ,ra))))
     `(imenu-list-entry-face-0          ((,class (:inherit variable-pitch :foreground ,ba))))
     `(imenu-list-entry-subalist-face-3 ((,class (:inherit variable-pitch :foreground ,bc :underline t))))
     `(imenu-list-entry-subalist-face-2 ((,class (:inherit variable-pitch :foreground ,rc :underline t))))
     `(imenu-list-entry-subalist-face-1 ((,class (:inherit variable-pitch :foreground ,gc :underline t))))
     `(imenu-list-entry-subalist-face-0 ((,class (:inherit variable-pitch :foreground ,ba :background ,bg :underline t))))

;;;;;; Outline
     `(outline-1 ((,class (:foreground ,ba :background ,bg :inherit variable-pitch :extend t))))
     `(outline-2 ((,class (:foreground ,ga :background ,gg :inherit variable-pitch :extend t))))
     `(outline-3 ((,class (:foreground ,ra :background ,rg :inherit variable-pitch :extend t))))
     `(outline-4 ((,class (:foreground ,bc :background ,bg :inherit variable-pitch :extend t))))
     `(outline-5 ((,class (:foreground ,gc :background ,gg :inherit variable-pitch :extend t))))
     `(outline-6 ((,class (:foreground ,rc :background ,rg :inherit variable-pitch :extend t))))
     `(outline-7 ((,class (:foreground ,be :background ,bg :inherit variable-pitch :extend t))))
     `(outline-8 ((,class (:foreground ,ge :background ,gg :inherit variable-pitch :extend t))))
     `(outline-minor-1 ((,class (:foreground ,ba :background ,bg :inherit variable-pitch :extend t))))
     `(outline-minor-2 ((,class (:foreground ,ga :background ,gg :inherit variable-pitch :extend t))))
     `(outline-minor-3 ((,class (:foreground ,ra :background ,rg :inherit variable-pitch :extend t))))
     `(outline-minor-4 ((,class (:foreground ,bc :background ,bg :inherit variable-pitch :extend t))))
     `(outline-minor-5 ((,class (:foreground ,gc :background ,gg :inherit variable-pitch :extend t))))
     `(outline-minor-6 ((,class (:foreground ,rc :background ,rg :inherit variable-pitch :extend t))))
     `(outline-minor-7 ((,class (:foreground ,be :background ,bg :inherit variable-pitch :extend t))))
     `(outline-minor-8 ((,class (:foreground ,ge :background ,gg :inherit variable-pitch :extend t))))

;;;;;; org
     `(org-archived                  ((,class (:foreground ,wc))))
     `(org-clock-overlay             ((,class (:foreground ,wc :background ,bg))))
     `(org-code                      ((,class (:foreground ,gd))))
     `(org-column                    ((,class (:foreground ,bd :background ,gg))))
     `(org-column-title              ((,class (:inherit org-column :underline ,ba))))
     `(org-date                      ((,class (:foreground ,ww :background ,ra))))
     `(org-date-selected             ((,class (:inherit org-date :underline ,ga))))
     `(org-default                   ((,class (:foreground ,wa))))
     `(org-dispatcher-highlight      ((,class (:foreground ,ba :background ,gg :weight bold))))
     `(org-document-info             ((,class (:foreground ,rb :background ,bg))))
     `(org-document-info-keyword     ((,class (:foreground ,rc :background ,bg))))
     `(org-document-title            ((,class (:foreground ,bb :background ,bg :weight bold))))
     `(org-todo                      ((,class (:background ,bg :underline (:color ,ba :style double-line)))))
     `(org-done                      ((,class (:background ,gg :underline (:color ,ga :style double-line)))))
     `(org-drawer                    ((,class (:foreground ,rd :background ,rg :weight bold :box ,ra))))
     `(org-ellipsis                  ((,class (:height 1.2 :weight bold :foreground ,gc))))
     `(org-footnote                  ((,class (:foreground ,rc :underline ,ra))))
     `(org-formula                   ((,class (:foreground ,bc))))
     `(org-headline-todo             ((,class (:inherit org-todo))))
     `(org-headline-done             ((,class (:inherit org-done))))
     `(org-hide                      ((,class (:foreground ,ww))))
     `(org-indent                    ((,class (:foreground ,wd))))
     `(org-latex-and-related         ((,class (:foreground ,wb))))
     `(org-link                      ((,class (:foreground ,ba :background ,rg :underline ,ba))))
     `(org-list-dt                   ((,class (:background ,bf :underline (:color ,bb :style dots :position 0)))))
     `(org-macro                     ((,class (:foreground ,ra :underline ,ba))))
     `(org-meta-line                 ((,class (:foreground ,wb))))
     `(org-mode-line-clock           ((,class (:foreground ,rc :weight bold))))
     `(org-mode-line-clock-overrun   ((,class (:foreground ,rb :background ,rg :weight bold))))
     `(org-priority                  ((,class (:foreground ,ba :background ,bg :weight bold))))
     `(org-property-value            ((,class (:foreground ,bd))))
     `(org-scheduled                 ((,class (:foreground ,ga :background ,bg))))
     `(org-scheduled-previously      ((,class (:foreground ,ra :background ,bg))))
     `(org-scheduled-today           ((,class (:foreground ,ga :background ,bg :underline ,ga))))
     `(org-sexp-date                 ((,class (:inherit org-date :underline ,wc))))
     `(org-special-keyword           ((,class (:foreground ,rc :weight bold))))
     `(org-table                     ((,class (:foreground ,ga :background ,bg))))
     `(org-table-header              ((,class (:inherit org-table :box (:line-width -1 :color ,ra)))))
     `(org-tag                       ((,class (:foreground ,ww :background ,ra))))
     `(org-tag-group                 ((,class (:foreground ,wf :background ,ra))))
     `(org-target                    ((,class (:foreground ,gc :underline ,ra))))
     `(org-time-grid                 ((,class (:foreground ,rc :box (:line-width -1 :color ,wc)))))
     `(org-upcoming-deadline         ((,class (:background ,bg :underline (:color ,bg :style dots)))))
     `(org-upcoming-distant-deadline ((,class (:background ,bg :underline (:color ,we :style dots)))))
     `(org-verbatim                  ((,class (:foreground ,bc))))
     `(org-verse                     ((,class (:foreground ,wb :underline (:color ,wa :style dots)))))
     `(org-warning                   ((,class (:foreground ,ra :background ,rg :underline (:color ,ra :line-width -1)))))

;;;;;;; agenda
     `(org-agenda-calendar-event   ((,class (:foreground ,bb :underline (:style dots :position 0)))))
     `(org-agenda-calendar-sexp    ((,class (:foreground ,bb :box (:line-width -1 :color ,gg)))))
     `(org-agenda-clocking         ((,class (:foreground ,rb :box (:line-width -1 :color ,rg)))))
     `(org-agenda-column-dateline  ((,class (:foreground ,rc :background ,wf))))
     `(org-agenda-current-time     ((,class (:foreground ,rc :box (:line-width -1 :color ,ra)))))
     `(org-agenda-date             ((,class (:foreground ,ra :background ,bg))))
     `(org-agenda-date-today       ((,class (:inherit org-agenda-date :underline (:style dashes :position 0)))))
     `(org-agenda-date-weekend     ((,class (:inherit org-agenda-date :underline (:style dots :position 0)))))
     `(org-agenda-diary            ((,class (:foreground ,gd))))
     `(org-agenda-dimmed-todo-face ((,class (:background ,rc))))
     `(org-agenda-done             ((,class (:foreground ,ga :background ,gg))))
     `(org-agenda-filter-category  ((,class (:foreground ,bc :background ,rg :underline (:style dashes :position 0)))))
     `(org-agenda-filter-effort    ((,class (:foreground ,gc :background ,rg :underline (:style dashes :position 0)))))
     `(org-agenda-filter-regexp    ((,class (:foreground ,rc :background ,rg :underline (:style dashes :position 0)))))
     `(org-agenda-filter-tags      ((,class (:foreground ,wc :background ,rg :underline (:style dashes :position 0)))))
     `(org-agenda-restriction-lock ((,class (:foreground ,wf))))
     `(org-agenda-structure        ((,class (:inherit variable-pitch :foreground ,bc :height 1.2))))

;;;;;;; block
     `(org-block-begin-line ((,class (:foreground ,ra :background ,rg :slant italic :extend t :weight bold :inherit variable-pitch :underline (:color ,ra :position 0)))))
     `(org-block-end-line   ((,class (:foreground ,ba :background ,bg :slant italic :extend t :weight bold :inherit variable-pitch :overline ,ba))))

;;;;;;; checkbox
     `(org-checkbox                 ((,class (:foreground ,ra :background ,rg))))
     `(org-checkbox-statistics-done ((,class (:foreground ,ga :background ,gg))))
     `(org-checkbox-statistics-todo ((,class (:foreground ,ba :background ,bg))))

;;;;;;; level
     `(org-level-1 ((,class (:foreground ,ba :background ,bg :inherit variable-pitch :extend t))))
     `(org-level-2 ((,class (:foreground ,ga :background ,gg :inherit variable-pitch :extend t))))
     `(org-level-3 ((,class (:foreground ,ra :background ,rg :inherit variable-pitch :extend t))))
     `(org-level-4 ((,class (:foreground ,bc :background ,bg :inherit variable-pitch :extend t))))
     `(org-level-5 ((,class (:foreground ,gc :background ,gg :inherit variable-pitch :extend t))))
     `(org-level-6 ((,class (:foreground ,rc :background ,rg :inherit variable-pitch :extend t))))
     `(org-level-7 ((,class (:foreground ,be :background ,bg :inherit variable-pitch :extend t))))
     `(org-level-8 ((,class (:foreground ,ge :background ,gg :inherit variable-pitch :extend t))))

;;;;;; markdown
     `(markdown-header-face-1 ((,class :inherit outline-1)))
     `(markdown-header-face-2 ((,class :inherit outline-2)))
     `(markdown-header-face-3 ((,class :inherit outline-3)))
     `(markdown-header-face-4 ((,class :inherit outline-4)))
     `(markdown-header-face-5 ((,class :inherit outline-5)))
     `(markdown-header-face-6 ((,class :inherit outline-6)))
     `(markdown-link-face ((,class :inherit org-link)))
     `(markdown-code-face ((,class :inherit font-lock-number-face)))

;;;;;; paren
     `(show-paren-match            ((,class (:underline (:color ,gc :postion 0 :style dashes)))))
     `(show-paren-mismatch         ((,class (:underline (:color ,rc :postion 0 :style dashes)))))
     `(show-paren-match-expression ((,class (:inherit show-paren-match))))

;;;;;; sh
     `(sh-heredoc ((,class (:foreground ,rb :background ,bg))))

;;;;;; shr
     `(shr-link ((,class (:inherit org-link))))
     `(shr-selected-link ((,class (:inherit org-link :background ,bf))))

;;;;;; git-gutter
     `(git-gutter:added       ((,class (:background ,gc :foreground ,gc))))
     `(git-gutter:deleted     ((,class (:background ,rc :foreground ,rc))))
     `(git-gutter:modified    ((,class (:background ,bc :foreground ,bc))))
     ;; `(git-gutter:unchanged   ((,class (:background ,gc :foreground ,gc))))
     `(git-gutter:separator   ((,class (:background ,wc))))
     `(git-gutter-fr:added    ((,class (:inherit git-gutter:added))))
     `(git-gutter-fr:deleted  ((,class (:inherit git-gutter:deleted))))
     `(git-gutter-fr:modified ((,class (:inherit git-gutter:modified))))

;;;;;; diff-hl
     `(diff-hl-insert ((,class (:background ,gc :foreground ,gc))))
     `(diff-hl-delete ((,class (:background ,rc :foreground ,rc))))
     `(diff-hl-change ((,class (:background ,bc :foreground ,bc))))
     `(diff-hl-dired-insert ((,class (:background ,ge :foreground ,ge))))
     `(diff-hl-dired-change ((,class (:background ,re :foreground ,re))))
     `(diff-hl-dired-delete ((,class (:background ,be :foreground ,be))))

;;;;;; which-key
     `(which-key-key-face ((,class (:foreground ,ga :background ,bg :weight bold))))
     `(which-key-group-description-face ((,class (:foreground ,ra :weight bold))))
     `(which-key-command-description-face ((,class (:foreground ,ba :slant italic))))
     `(which-key-separator-face ((,class (:foreground ,ww :background ,ww))))

;;;;;; message
     `(message-header-name    ((,class (:foreground ,bb :inherit variable-pitch))))
     `(message-header-cc      ((,class (:foreground ,rc :weight bold :inherit variable-pitch :underline (:style dots)))))
     `(message-header-to      ((,class (:foreground ,ra :weight bold :inherit variable-pitch :underline (:style dots)))))
     `(message-header-subject ((,class (:foreground ,ga :inherit variable-pitch))))

;;;;;; transient
     `(transient-unreachable       ((,class (:foreground ,we))))
     `(transient-inactive-value    ((,class (:foreground ,we))))
     `(transient-inactive-argument ((,class (:foreground ,we))))
     `(transient-value             ((,class (:background ,gf :inherit transient-inactive-value))))
     `(transient-argument          ((,class (:background ,ba :inherit transient-inactive-argument))))
     `(transient-inapt-suffix      ((,class (:foreground ,we :inherit italic))))
     `(transient-heading           ((,class (:foreground ,ra :background ,rg :inherit variable-pitch :height 1.1 :extend t))))
     `(transient-active-infix      ((,class (:inherit lazy-highlight :underline t))))
     `(transient-key               ((,class (:foreground ,ra :weight bold))))
     `(transient-key-exit          ((,class (:foreground ,ba :weight bold))))
     `(transient-key-noop          ((,class (:foreground ,wc :weight bold))))
     `(transient-key-stay          ((,class (:foreground ,ga :weight bold))))
     `(transient-key-return        ((,class (:foreground ,ga :background ,gg :inherit bold))))
     `(transient-mismatched-key    ((,class (:foreground ,rb :weight bold))))
     `(transient-nonstandard-key   ((,class (:foreground ,bc :weight bold))))
     `(transient-unreachable-key   ((,class (:foreground ,we))))

;;;;;; magit
     `(magit-section-heading        ((,class (:foreground ,ra :background ,gg :inherit variable-pitch :underline (:color ,ra :style dots) :extend t))))
     `(magit-section-highlight      ((,class (:background ,bg))))
     `(magit-hash                   ((,class (:foreground ,rc :background ,bg :weight bold))))
     `(magit-branch-local           ((,class (:foreground ,rd :background ,bg :inherit variable-pitch))))
     `(magit-branch-remote          ((,class (:foreground ,gd :background ,bg :inherit variable-pitch))))
     `(magit-diff-file-heading      ((,class (:foreground ,ba :height 1.1 :weight bold))))
     `(magit-diff-removed           ((,class (:foreground ,rc :background ,rg))))
     `(magit-diff-added             ((,class (:foreground ,gc :background ,gg))))
     `(magit-diff-removed-highlight ((,class (:foreground ,ra :background ,re))))
     `(magit-diff-added-highlight   ((,class (:foreground ,ga :background ,ge))))
     `(magit-diff-context           ((,class (:foreground ,wa :background ,ww))))
     `(magit-diff-context-highlight ((,class (:inherit magit-diff-context :background ,wg))))
     `(magit-diff-hunk-heading      ((,class (:inherit magit-diff-context :background ,wf))))
     `(magit-diff-hunk-heading-highlight ((,class (:inherit magit-diff-context :background ,we :weight bold))))
     `(magit-log-author             ((,class (:foreground ,ww :background ,ga))))
     `(magit-log-date               ((,class (:foreground ,ww :background ,ra))))
     `(magit-log-graph              ((,class (:foreground ,ww :background ,ba))))
     `(magit-tag                    ((,class (:foreground ,bb :underline t :inherit variable-pitch))))
     `(magit-popup-disabled-argument((,class (:foreground ,we))))
     `(magit-blame-margin           ((,class (:foreground ,bd :background ,wf))))
     `(magit-blame-heading          ((,class (:foreground ,rd :background ,wf))))
     `(magit-blame-highlight        ((,class (:foreground ,gd :background ,wf))))

;;;;;; diff
     `(diff-refine-removed ((,class (:foreground ,ww :background ,ra))))
     `(diff-refine-changed ((,class (:foreground ,ww :background ,ba))))
     `(diff-refine-added   ((,class (:foreground ,ww :background ,ga))))

;;;;;; orderless
     `(orderless-match-face-0 ((,class (:background ,bg :weight bold :underline ,bd))))
     `(orderless-match-face-1 ((,class (:background ,rg :weight bold :underline ,rd))))
     `(orderless-match-face-2 ((,class (:background ,gg :weight bold :underline ,gd))))
     `(orderless-match-face-3 ((,class (:background ,wg :weight bold :underline ,wd))))

;;;;;; vertico
     `(vertico-current     ((,class (:underline (:line-width -1 :color ,ra :style dots)))))
     `(vertico-group-title ((,class (:foreground ,ra :background ,rg :inherit variable-pitch))))
     `(vertico-quick1      ((,class (:background ,ba :foreground ,bg))))
     `(vertico-quick2      ((,class (:background ,ga :foreground ,gg))))

;;;;;; ediff
     `(ediff-odd-diff-Ancestor ((,class (:background ,rg))))
     `(ediff-odd-diff-C ((,class (:background ,rf))))
     `(ediff-odd-diff-B ((,class (:background ,re))))
     `(ediff-odd-diff-A ((,class (:background ,rd))))
     `(ediff-even-diff-Ancestor ((,class (:background ,gg))))
     `(ediff-even-diff-C ((,class (:background ,gf))))
     `(ediff-even-diff-B ((,class (:background ,ge))))
     `(ediff-even-diff-A ((,class (:background ,gd))))

;;;;;; flycheck
     `(flycheck-info    ((,class (:underline (:line-width -1 :color ,gc)))))
     `(flycheck-error   ((,class (:underline (:line-width -1 :color ,rc)))))
     `(flycheck-warning ((,class (:underline (:line-width -1 :color ,bc)))))

     `(flycheck-posframe-face            ((,class (:inherit popup-tip-face))))
     `(flycheck-posframe-info-face       ((,class (:inherit (popup-tip-face variable-pitch flycheck-info) :foreground ,gc))))
     `(flycheck-posframe-error-face      ((,class (:inherit (popup-tip-face variable-pitch flycheck-error) :foreground ,rc))))
     `(flycheck-posframe-border-face     ((,class (:inherit popup-tip-face))))
     `(flycheck-posframe-warning-face    ((,class (:inherit (popup-tip-face variable-pitch flycheck-warning) :foreground ,bc))))
     `(flycheck-posframe-background-face ((,class (:inherit popup-tip-face))))

;;;;;; flymake
     `(flymake-note    ((,class (:underline (:position 0 :style wave :color ,gc)))))
     `(flymake-error   ((,class (:underline (:position 0 :style wave :color ,rc)))))
     `(flymake-warning ((,class (:underline (:position 0 :style wave :color ,bc)))))
     `(flymake-note-echo    ((,class (:inherit flymake-note))))
     `(flymake-error-echo   ((,class (:inherit flymake-error))))
     `(flymake-warning-echo ((,class (:inherit flymake-warning))))
     `(flymake-note-echo-at-eol    ((,class (:inherit flymake-note))))
     `(flymake-error-echo-at-eol   ((,class (:inherit flymake-error))))
     `(flymake-warning-echo-at-eol ((,class (:inherit flymake-warning))))
     `(flymake-end-of-line-diagnostics-face ((,class (:inherit (region font-lock-keyword-face) :underline (:position 0 :style wave :color ,ba)))))

;;;;;; highlight-indent-guides
     `(highlight-indent-guides-odd-face             ((,class (:foreground ,ra))))
     `(highlight-indent-guides-stack-odd-face       ((,class (:foreground ,ba))))
     `(highlight-indent-guides-top-odd-face         ((,class (:foreground ,ga))))
     `(highlight-indent-guides-even-face            ((,class (:foreground ,rc))))
     `(highlight-indent-guides-stack-even-face      ((,class (:foreground ,bc))))
     `(highlight-indent-guides-top-even-face        ((,class (:foreground ,gc))))
     `(highlight-indent-guides-character-face       ((,class (:foreground ,re))))
     `(highlight-indent-guides-stack-character-face ((,class (:foreground ,be))))
     `(highlight-indent-guides-top-character-face   ((,class (:foreground ,ge))))

;;;;;; highlight-indentation
     `(highlight-indentation-face                ((,class (:background ,wg))))
     `(highlight-indentation-guides-odd-face     ((,class (:inherit highlight-indentation-face))))
     `(highlight-indentation-guides-even-face    ((,class (:inherit highlight-indentation-face))))
     `(highlight-indentation-current-column-face ((,class (:background ,wf))))

;;;;;; writegood
     `(writegood-weasels-face       ((,class (:underline (:line-width -1 :color ,rg)))))
     `(writegood-duplicates-face    ((,class (:underline (:line-width -1 :color ,bg)))))
     `(writegood-passive-voice-face ((,class (:underline (:line-width -1 :color ,gg)))))

;;;;;; eglot
     `(eglot-highlight-symbol-face  ((,class (:foreground ,rb :background ,bf :weight bold))))

;;;;;; rjsx
     `(rjsx-tag-bracket-face ((,class :inherit font-lock-keyword-face)))

;;;;;; web-mode
     `(web-mode-html-tag-bracket-face ((,class :inherit font-lock-keyword-face)))

;;;;;; corfu
     `(corfu-bar       ((,class (:background ,ra))))
     `(corfu-border    ((,class (:background ,gc))))
     `(corfu-current   ((,class (:inherit region))))
     `(corfu-default   ((,class (:inherit default))))
     `(corfu-popupinfo ((,class (:inherit default))))
     `(corfu-candidate-overlay-face ((,class (:weight bold :foreground ,gd))))
     `(corfu-candidate-overlay-face-exact-match ((,class (:foreground ,gd :weight bold :underline (:color ,gb :position 0)))))

;;;;;; evil-goggles
     `(evil-goggles-join-face           ((,class (:background ,gg))))
     `(evil-goggles-yank-face           ((,class (:background ,bg))))
     `(evil-goggles-paste-face          ((,class (:background ,ge))))
     `(evil-goggles-change-face         ((,class (:background ,be))))
     `(evil-goggles-delete-face         ((,class (:background ,re))))
     `(evil-goggles-surround-face       ((,class (:background ,gd))))
     `(evil-goggles-commentary-face     ((,class (:background ,bb))))
     `(evil-goggles-nerd-commenter-face ((,class (:inherit evil-goggles-commentary-face))))

;;;;;; vundo
     `(vundo-node        ((,class (:foreground ,ga))))
     `(vundo-stem        ((,class (:foreground ,ra))))
     `(vundo-saved       ((,class (:foreground ,wa))))
     `(vundo-default     ((,class (:foreground ,we))))
     `(vundo-highlight   ((,class (:background ,ba))))
     `(vundo-last-saved  ((,class (:foreground ,wc))))
     `(vundo-branch-stem ((,class (:foreground ,rd))))

;;;;;; eldoc-box
     `(eldoc-box-border ((,class (:background ,ga))))
     `(eldoc-box-body   ((,class (:background ,bg))))

;;;;;; breadcrumb
     `(breadcrumb-face                ((,class (:inherit variable-pitch :foreground ,wb :weight bold))))
     `(breadcrumb-imenu-leaf-face     ((,class (:inherit variable-pitch :foreground ,ga :background ,gg :box (:color ,ga :line-width -1)))))
     `(breadcrumb-imenu-crumbs-face   ((,class (:inherit variable-pitch :foreground ,ra :background ,gg :box (:color ,ra :line-width -1)))))
     `(breadcrumb-project-base-face   ((,class (:inherit variable-pitch :foreground ,ba :background ,gg :box (:color ,ba :line-width -1)))))
     `(breadcrumb-project-leaf-face   ((,class (:inherit variable-pitch :foreground ,ga :background ,bg :box (:color ,ga :line-width -1)))))
     `(breadcrumb-project-crumbs-face ((,class (:inherit variable-pitch :foreground ,ra :background ,bg :box (:color ,ra :line-width -1))))))))

;;;; Load
;;;###autoload
(when load-file-name
  (let ((dir (file-name-directory load-file-name)))
    (unless (equal dir (expand-file-name "themes/" data-directory))
      (add-to-list 'custom-theme-load-path dir))))

(provide 'hyperstitional-themes)

;;; hyperstitional-themes.el ends here
