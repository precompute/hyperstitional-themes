;;; hyperstitional-themes-screenshy-theme.el --- Give your monitor a break -*- lexical-binding: t; -*-

;; Copyright (C) 2024 precompute

;; Author: precompute <git@precompute.net>
;; URL: https://github.com/precompute/hyperstitional-themes
;; Created: February 2, 2025
;; Modified: February 2, 2025
;; Version: 1.2

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
;; Give your monitor a break.

;;; Code:
(require 'hyperstitional-themes)

;;;; definition
(deftheme hyperstitional-themes-screenshy
  "Give your monitor a break.")

(let ((class '((class color)))
;;;;; palette
      (bg "#000000")
      (fg "#616161")
      (c0 "#8e5300")
      (c1 "#6a6300")
      (c2 "#326e00")
      (c3 "#006f56")
      (c4 "#006c71")
      (c5 "#006797")
      (c6 "#9000ec")
      (c0-light "#765b4a")
      (c1-light "#65624a")
      (c2-light "#51674a")
      (c3-light "#4c675d")
      (c4-light "#4d6567")
      (c5-light "#4f6376")
      (c6-light "#6e5593")
      (c0-dim "#86562c")
      (c1-dim "#68622b")
      (c2-dim "#3f6c2b")
      (c3-dim "#2e6c59")
      (c4-dim "#2f696e")
      (c5-dim "#33658a")
      (c6-dim "#813cc7")
      (c0-dark "#7e593d")
      (c1-dark "#66623d")
      (c2-dark "#486a3c")
      (c3-dark "#3f695b")
      (c4-dark "#40676b")
      (c5-dark "#436480")
      (c6-dark "#6e5593")
      (e1 "#0000FF"))
;;;;; definitions
;;;;;; base
  (custom-theme-set-faces
   'hyperstitional-themes-screenshy
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
   `(font-lock-preprocessor-face         ((,class (:foreground ,c3-dim :background ,c1-light))))
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
   `(header-line                ((,class (:inherit mode-line))))
   `(header-line-highlight      ((,class (:inherit mode-line-highlight))))

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
   `(outline-1 ((,class (:foreground ,bg :background ,c6-light :inherit variable-pitch))))
   `(outline-2 ((,class (:foreground ,bg :background ,c5-light :inherit variable-pitch))))
   `(outline-3 ((,class (:foreground ,bg :background ,c4-light :inherit variable-pitch))))
   `(outline-4 ((,class (:foreground ,bg :background ,c3-light :inherit variable-pitch))))
   `(outline-5 ((,class (:foreground ,bg :background ,c2-light :inherit variable-pitch))))
   `(outline-6 ((,class (:foreground ,bg :background ,c1-light :inherit variable-pitch))))
   `(outline-7 ((,class (:foreground ,bg :background ,c0-light :inherit variable-pitch))))
   `(outline-8 ((,class (:foreground ,bg :background ,c6-light :inherit variable-pitch))))
   `(outline-minor-0 ((,class (:background ,bg))))
   `(outline-minor-1 ((,class (:foreground ,bg :background ,c6-light :inherit variable-pitch))))
   `(outline-minor-2 ((,class (:foreground ,bg :background ,c5-light :inherit variable-pitch))))
   `(outline-minor-3 ((,class (:foreground ,bg :background ,c4-light :inherit variable-pitch))))
   `(outline-minor-4 ((,class (:foreground ,bg :background ,c3-light :inherit variable-pitch))))
   `(outline-minor-5 ((,class (:foreground ,bg :background ,c2-light :inherit variable-pitch))))
   `(outline-minor-6 ((,class (:foreground ,bg :background ,c1-light :inherit variable-pitch))))
   `(outline-minor-7 ((,class (:foreground ,bg :background ,c0-light :inherit variable-pitch))))
   `(outline-minor-8 ((,class (:foreground ,bg :background ,c6-light :inherit variable-pitch))))

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
   `(org-drawer                    ((,class (:inherit fixed-pitch :foreground ,c6-dim :background ,c0-dark :box (:line-width 2 :style pressed-button)))))
   `(org-ellipsis                  ((,class (:inherit font-lock-builtin-face))))
   `(org-footnote                  ((,class (:foreground ,c2 :background ,c2-light))))
   `(org-formula                   ((,class (:foreground ,c4 :background ,c3-light))))
   `(org-headline-todo             ((,class (:background ,c2-light :weight bold))))
   `(org-headline-done             ((,class (:background ,c4-light :weight bold))))
   `(org-hide                      ((,class (:foreground ,c0-light))))
   `(org-indent                    ((,class (:foreground ,c0-light))))
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
   `(merlin-compilation-warning-face ((,class (:inherit font-lock-warning-face))))))

(provide-theme 'hyperstitional-themes-screenshy)

;;(-> (buffer-substring-no-properties (point) (+ (point) 6))
;;    ;; hsluv-hex-to-rgb
;;    hsluv-hex-to-hsluv)
;;
;;(hsluv-hsluv-to-hex '(0 0 21.3))
;;(insert (hsluv-hsluv-to-hex '(290 38.2 21.3)))
;;(insert (hsluv-hsluv-to-hex '(300 38.2 21.3)))
;;(insert (hsluv-hsluv-to-hex '(310 38.2 21.3)))
;;(insert (hsluv-hsluv-to-hex '(320 38.2 21.3)))
;;(insert (hsluv-hsluv-to-hex '(330 38.2 21.3)))
;;(insert (hsluv-hsluv-to-hex '(340 38.2 21.3)))
;;(insert (hsluv-hsluv-to-hex '(350 38.2 21.3)))
;;(insert (hsluv-hsluv-to-hex '(360 38.2 21.3)))
;;
;;#3f2b4b
;;#422a47
;;#442943
;;#462940
;;#48283c
;;#4a2839
;;#4c2735
;;#4e272f
;;
;;(insert (hsluv-hsluv-to-hex '(290 57.3 21.3)))
;;(insert (hsluv-hsluv-to-hex '(300 57.3 21.3)))
;;(insert (hsluv-hsluv-to-hex '(310 57.3 21.3)))
;;(insert (hsluv-hsluv-to-hex '(320 57.3 21.3)))
;;(insert (hsluv-hsluv-to-hex '(330 57.3 21.3)))
;;(insert (hsluv-hsluv-to-hex '(340 57.3 21.3)))
;;(insert (hsluv-hsluv-to-hex '(350 57.3 21.3)))
;;(insert (hsluv-hsluv-to-hex '(360 57.3 21.3)))
;;
;;#462457
;;#4a2350
;;#4d234b
;;#4f2246
;;#522141
;;#54213c
;;#562036
;;#581f2e
;;
;;(insert (hsluv-hsluv-to-hex '(290 76.4 21.3)))
;;(insert (hsluv-hsluv-to-hex '(300 76.4 21.3)))
;;(insert (hsluv-hsluv-to-hex '(310 76.4 21.3)))
;;(insert (hsluv-hsluv-to-hex '(320 76.4 21.3)))
;;(insert (hsluv-hsluv-to-hex '(330 76.4 21.3)))
;;(insert (hsluv-hsluv-to-hex '(340 76.4 21.3)))
;;(insert (hsluv-hsluv-to-hex '(350 76.4 21.3)))
;;(insert (hsluv-hsluv-to-hex '(360 76.4 21.3)))
;;
;;#4d1b63
;;#521a5a
;;#551953
;;#58184c
;;#5b1746
;;#5d173f
;;#5f1637
;;#61152c
;;
;;(insert (hsluv-hsluv-to-hex '(290 100 21.3)))
;;(insert (hsluv-hsluv-to-hex '(300 100 21.3)))
;;(insert (hsluv-hsluv-to-hex '(310 100 21.3)))
;;(insert (hsluv-hsluv-to-hex '(320 100 21.3)))
;;(insert (hsluv-hsluv-to-hex '(330 100 21.3)))
;;(insert (hsluv-hsluv-to-hex '(340 100 21.3)))
;;(insert (hsluv-hsluv-to-hex '(350 100 21.3)))
;;(insert (hsluv-hsluv-to-hex '(360 100 21.3)))
;;
;;#570073
;;#5d0067
;;#60005d
;;#630054
;;#65004c
;;#670043
;;#690038
;;#6b002a
;;
;;
;;(insert (hsluv-hsluv-to-hex '(0 0 21.3)))#333333
;;(insert (hsluv-hsluv-to-hex '(100 38.2 21.3)))#303425
;;(insert (hsluv-hsluv-to-hex '(130 38.2 21.3)))#253727
;;(insert (hsluv-hsluv-to-hex '(160 38.2 21.3)))#263630
;;(insert (hsluv-hsluv-to-hex '(190 38.2 21.3)))#273535
;;(insert (hsluv-hsluv-to-hex '(220 38.2 21.3)))#28353a
;;(insert (hsluv-hsluv-to-hex '(250 38.2 21.3)))#293344
;;(insert (hsluv-hsluv-to-hex '(280 38.2 21.3)))#3b2c50
;;(insert (hsluv-hsluv-to-hex '(100 57.3 21.3)))#2f351d
;;(insert (hsluv-hsluv-to-hex '(130 57.3 21.3)))#1d3920
;;(insert (hsluv-hsluv-to-hex '(160 57.3 21.3)))#1f372f
;;(insert (hsluv-hsluv-to-hex '(190 57.3 21.3)))#1f3736
;;(insert (hsluv-hsluv-to-hex '(220 57.3 21.3)))#20363d
;;(insert (hsluv-hsluv-to-hex '(250 57.3 21.3)))#22334c
;;(insert (hsluv-hsluv-to-hex '(280 38.2 21.3)))#3b2c50
;;(insert (hsluv-hsluv-to-hex '(100 76.4 21.3)))#2e3613
;;(insert (hsluv-hsluv-to-hex '(130 76.4 21.3)))#133a17
;;(insert (hsluv-hsluv-to-hex '(160 76.4 21.3)))#15392e
;;(insert (hsluv-hsluv-to-hex '(190 76.4 21.3)))#153837
;;(insert (hsluv-hsluv-to-hex '(220 76.4 21.3)))#163741
;;(insert (hsluv-hsluv-to-hex '(250 76.4 21.3)))#193454
;;(insert (hsluv-hsluv-to-hex '(280 76.4 21.3)))#451d6e
;;(insert (hsluv-hsluv-to-hex '(100 100 21.3)))#2c3700
;;(insert (hsluv-hsluv-to-hex '(130 100 21.3)))#003c09
;;(insert (hsluv-hsluv-to-hex '(160 100 21.3)))#003b2c
;;(insert (hsluv-hsluv-to-hex '(190 100 21.3)))#003a39
;;(insert (hsluv-hsluv-to-hex '(220 100 21.3)))#003845
;;(insert (hsluv-hsluv-to-hex '(250 100 21.3)))#00345f
;;(insert (hsluv-hsluv-to-hex '(280 100 21.3)))#4e0084
;;
;;(insert (hsluv-hsluv-to-hex '(0 0 41.3)))#616161
;;(insert (hsluv-hsluv-to-hex '(100 38.2 41.3)))#5c644a
;;(insert (hsluv-hsluv-to-hex '(130 38.2 41.3)))#4a684c
;;(insert (hsluv-hsluv-to-hex '(160 38.2 41.3)))#4c675d
;;(insert (hsluv-hsluv-to-hex '(190 38.2 41.3)))#4d6665
;;(insert (hsluv-hsluv-to-hex '(220 38.2 41.3)))#4e646d
;;(insert (hsluv-hsluv-to-hex '(250 38.2 41.3)))#51627f
;;(insert (hsluv-hsluv-to-hex '(280 38.2 41.3)))#6e5593
;;(insert (hsluv-hsluv-to-hex '(100 57.3 41.3)))#5a653c
;;(insert (hsluv-hsluv-to-hex '(130 57.3 41.3)))#3c6b40
;;(insert (hsluv-hsluv-to-hex '(160 57.3 41.3)))#3f695b
;;(insert (hsluv-hsluv-to-hex '(190 57.3 41.3)))#406867
;;(insert (hsluv-hsluv-to-hex '(220 57.3 41.3)))#426673
;;(insert (hsluv-hsluv-to-hex '(250 57.3 41.3)))#45628d
;;(insert (hsluv-hsluv-to-hex '(280 38.2 41.3)))#6e5593
;;(insert (hsluv-hsluv-to-hex '(100 76.4 41.3)))#58672b
;;(insert (hsluv-hsluv-to-hex '(130 76.4 41.3)))#2b6e32
;;(insert (hsluv-hsluv-to-hex '(160 76.4 41.3)))#2e6c59
;;(insert (hsluv-hsluv-to-hex '(190 76.4 41.3)))#2f6a69
;;(insert (hsluv-hsluv-to-hex '(220 76.4 41.3)))#316879
;;(insert (hsluv-hsluv-to-hex '(250 76.4 41.3)))#35629b
;;(insert (hsluv-hsluv-to-hex '(280 76.4 41.3)))#813cc7
;;(insert (hsluv-hsluv-to-hex '(100 100 41.3)))#566800
;;(insert (hsluv-hsluv-to-hex '(130 100 41.3)))#007119
;;(insert (hsluv-hsluv-to-hex '(160 100 41.3)))#006f56
;;(insert (hsluv-hsluv-to-hex '(190 100 41.3)))#006d6b
;;(insert (hsluv-hsluv-to-hex '(220 100 41.3)))#006a80
;;(insert (hsluv-hsluv-to-hex '(250 100 41.3)))#0063ac
;;(insert (hsluv-hsluv-to-hex '(280 100 41.3)))#9000ec
;;
;;(insert (hsluv-hsluv-to-hex '(0 0 71.3)))#aeaeae
;;(insert (hsluv-hsluv-to-hex '(100 38.2 71.3)))#a7b387
;;(insert (hsluv-hsluv-to-hex '(130 38.2 71.3)))#88ba8b
;;(insert (hsluv-hsluv-to-hex '(160 38.2 71.3)))#8bb8a7
;;(insert (hsluv-hsluv-to-hex '(190 38.2 71.3)))#8cb6b5
;;(insert (hsluv-hsluv-to-hex '(220 38.2 71.3)))#8eb4c3
;;(insert (hsluv-hsluv-to-hex '(250 38.2 71.3)))#9eafce
;;(insert (hsluv-hsluv-to-hex '(280 38.2 71.3)))#b6a8ce
;;(insert (hsluv-hsluv-to-hex '(100 57.3 71.3)))#a3b670
;;(insert (hsluv-hsluv-to-hex '(130 57.3 71.3)))#70c077
;;(insert (hsluv-hsluv-to-hex '(160 57.3 71.3)))#74bca4
;;(insert (hsluv-hsluv-to-hex '(190 57.3 71.3)))#76bab8
;;(insert (hsluv-hsluv-to-hex '(220 57.3 71.3)))#79b7cd
;;(insert (hsluv-hsluv-to-hex '(250 57.3 71.3)))#95afdd
;;(insert (hsluv-hsluv-to-hex '(280 38.2 71.3)))#b6a8ce
;;(insert (hsluv-hsluv-to-hex '(100 76.4 71.3)))#a0b853
;;(insert (hsluv-hsluv-to-hex '(130 76.4 71.3)))#53c45f
;;(insert (hsluv-hsluv-to-hex '(160 76.4 71.3)))#57c0a0
;;(insert (hsluv-hsluv-to-hex '(190 76.4 71.3)))#5abdbb
;;(insert (hsluv-hsluv-to-hex '(220 76.4 71.3)))#5cbad7
;;(insert (hsluv-hsluv-to-hex '(250 76.4 71.3)))#8ab0ec
;;(insert (hsluv-hsluv-to-hex '(280 76.4 71.3)))#bea1ec
;;(insert (hsluv-hsluv-to-hex '(100 100 71.3)))#9cbb00
;;(insert (hsluv-hsluv-to-hex '(130 100 71.3)))#00ca35
;;(insert (hsluv-hsluv-to-hex '(160 100 71.3)))#00c59b
;;(insert (hsluv-hsluv-to-hex '(190 100 71.3)))#00c2bf
;;(insert (hsluv-hsluv-to-hex '(220 100 71.3)))#00bee2
;;(insert (hsluv-hsluv-to-hex '(250 100 71.3)))#79b0ff
;;(insert (hsluv-hsluv-to-hex '(280 100 71.3)))#c39bff
;;
;;(insert (hsluv-hsluv-to-hex '(0 0 41.3)))#616161
;;(insert (hsluv-hsluv-to-hex '(40  38.2 41.3)))#765b4a
;;(insert (hsluv-hsluv-to-hex '(80  38.2 41.3)))#65624a
;;(insert (hsluv-hsluv-to-hex '(120 38.2 41.3)))#51674a
;;(insert (hsluv-hsluv-to-hex '(160 38.2 41.3)))#4c675d
;;(insert (hsluv-hsluv-to-hex '(200 38.2 41.3)))#4d6567
;;(insert (hsluv-hsluv-to-hex '(240 38.2 41.3)))#4f6376
;;(insert (hsluv-hsluv-to-hex '(280 38.2 41.3)))#6e5593
;;(insert (hsluv-hsluv-to-hex '(40  57.3 41.3)))#7e593d
;;(insert (hsluv-hsluv-to-hex '(80  57.3 41.3)))#66623d
;;(insert (hsluv-hsluv-to-hex '(120 57.3 41.3)))#486a3c
;;(insert (hsluv-hsluv-to-hex '(160 57.3 41.3)))#3f695b
;;(insert (hsluv-hsluv-to-hex '(200 57.3 41.3)))#40676b
;;(insert (hsluv-hsluv-to-hex '(240 57.3 41.3)))#436480
;;(insert (hsluv-hsluv-to-hex '(280 38.2 41.3)))#6e5593
;;(insert (hsluv-hsluv-to-hex '(40  76.4 41.3)))#86562c
;;(insert (hsluv-hsluv-to-hex '(80  76.4 41.3)))#68622b
;;(insert (hsluv-hsluv-to-hex '(120 76.4 41.3)))#3f6c2b
;;(insert (hsluv-hsluv-to-hex '(160 76.4 41.3)))#2e6c59
;;(insert (hsluv-hsluv-to-hex '(200 76.4 41.3)))#2f696e
;;(insert (hsluv-hsluv-to-hex '(240 76.4 41.3)))#33658a
;;(insert (hsluv-hsluv-to-hex '(280 76.4 41.3)))#813cc7
;;(insert (hsluv-hsluv-to-hex '(40  100 41.3)))#8e5300
;;(insert (hsluv-hsluv-to-hex '(80  100 41.3)))#6a6300
;;(insert (hsluv-hsluv-to-hex '(120 100 41.3)))#326e00
;;(insert (hsluv-hsluv-to-hex '(160 100 41.3)))#006f56
;;(insert (hsluv-hsluv-to-hex '(200 100 41.3)))#006c71
;;(insert (hsluv-hsluv-to-hex '(240 100 41.3)))#006797
;;(insert (hsluv-hsluv-to-hex '(280 100 41.3)))#9000ec

;;; hyperstitional-themes-screenshy-theme.el ends here
