# ExDocTests

It's just a collection of sample data build as documentation in Elixir modules,
to test different functionalities in [ExDoc](https://github.com/elixir-lang/ex_doc)

At the moment only [highlight.js](https://highlightjs.org) tests are included,
which cover:
* `HighlightJs.All` – See how all supported languages get highlighted.
* `HighlightJs.Elixir` – See how elixir gets highlighted
* `HighlightJs.ElixirIssues` – Lists of known bugs in the Elixir plugin

The functions load sample data from `sample_data/sources/`.

## Usage

* `mix deps.get` – to download the dependencies
* `mix` – to generate the docs
* browse `output` folder to see generated documentation under a folder
  with the ex_doc version number