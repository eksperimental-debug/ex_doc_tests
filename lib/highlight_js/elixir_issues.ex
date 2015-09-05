defmodule HighlightJs.ElixirIssues do
  require Doc
  
	@moduledoc """  
  Known issues with the Elixir plugin for highlight.js
  """

  @doc """
  It cannot deal properly with interpolation.
  Every single line bellow, has an issues, it takes it as a comment whatever comes after the #

  * [Issue reported](https://github.com/isagalaev/highlight.js/issues/730)


  ```elixir
    #{Doc.load! :"elixir.issue.interpolation"}
  ```
  """
  def interpolation do
  end

  @doc """
  **Sigils** : It cannot deal with the **[`~S sigil`](http://elixir-lang.org/getting-started/sigils.html#interpolation-and-escaping-in-sigils)**.
  `~s` is fine though.
  
  * [Issue reported](https://github.com/isagalaev/highlight.js/issues/730)

  ```elixir
    #{Doc.load! :"elixir.issue.sigil"}
  ```
  """
  def sigil do
  end

  @doc """
  Misinterpretetion of Slashes

  * [Issue reported](https://github.com/isagalaev/highlight.js/issues/730)

  **Function with a slash ( "Kernel./" )**: this one takes `/:` as the beggining of a regular expression

  or a Slash ir wrongly interpretted in a regular expression
 
  ```elixir
    #{Doc.load! :"elixir.issue.slashes"}
  ```
  """
  def slashes do
  end

end
