;; undo-tree

(add-to-list 'load-path "~/.config/emacs/plugins/queue")
(require 'queue)
(add-to-list 'load-path "~/.config/emacs/plugins/undo-tree")
(require 'undo-tree)
(global-undo-tree-mode)
