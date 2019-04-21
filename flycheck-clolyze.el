;;; flycheck-clolyze.el --- Add clolyze to flycheck

;;; Copyright (C) 2019 Daniel Laps

;;; Commentary:

;; This package adds Clolyze to flycheck.  To use it, add
;; to your init.el:
;; (require 'flycheck-clolyze)


(require 'flycheck)

(flycheck-define-checker clolyze
  "This checker uses clolyze to check clojure code."
  :command ("lein" "clolyze" ":linting")
  :error-patterns ((warning  line-start (file-name) ":" line ":" column ":" (message) line-end))
  :modes clojure-mode)

(add-to-list 'flycheck-checkers 'clolyze)

(provide 'flycheck-clolyze)
