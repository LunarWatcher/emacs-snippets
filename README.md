# Emacs snippets

This repo contains a collection of snippets compatible with [minad/tempel](https://github.com/minad/tempel)

The templates in this repo were originally planned to be used with the built-in tempo.el plugin, but due to limitations with both eglot, tempo, and capf, I switched to tempel to get completions and to avoid loading yasnippets. This repo may drift to another snippet provider in the future, especially if tempel becomes builtin (or the built-in tempo.el gets improved)

## Scope

This repo exclusively contains snippets I need and use (or plan to use). If you want to add snippets, make your own repo instead. You can fork this one to get the tiny amount of supporting code for the templates (that may or may not grow in the future, I haven't looked much at tempel's more advanced features yet)

## Installing

```elisp
(use-package emacs-snippets
  :vc (:url "https://codeberg.org/LunarWatcher/emacs-snippets.git"
            :rev :newest)
  :ensure t
)
```

## License

The snippets in this repo, as well as the vanishingly small amount of code to load them for use with tempel, is licensed under the unlicense. See the LICENSE file for the full text.

