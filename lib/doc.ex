defmodule Doc do
  @source_dir Mix.Project.config[:data_dir] <> "/sources"

  @moduledoc false
  def read!(file_path, heredoc_quote \\ <<?", ?", ?">>) do
    File.read!( file_path )
      |> escape_heredoc_quotes( heredoc_quote )
  end

  def escape_heredoc_quotes(string, heredoc_quote \\ <<?", ?", ?">>) do
    case heredoc_quote do
      #<<?", ?", ?">> -> String.replace(string, <<?", ?", ?">>, <<?\\, ?", ?\\, ?", ?\\, ?">>)
      <<?", ?", ?">> -> String.replace(string, <<?", ?", ?">>, '\"\"\"')
      <<?', ?', ?'>> -> String.replace(string, <<?', ?', ?'>>, <<?\\, ?', ?\\, ?', ?\\, ?'>>)
    end
  end


  def load!( file_name ) do
    File.read!( @source_dir <> "/#{file_name}" <> ".txt" )
  end

end
