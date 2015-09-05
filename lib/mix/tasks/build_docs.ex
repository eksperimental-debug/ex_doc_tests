defmodule Mix.Tasks.BuildDocs do
  @moduledoc false
  @shortdoc "Generate the test documentation for the project"
  @recursive true

  use Mix.Task
  #import Mix.Dep, only: [loaded: 1, format_dep: 1, format_status: 1, check_lock: 2]

  defp get_dep_version(dep) when is_atom(dep) do
    {:ok, str} = File.read "mix.lock"
    {map, _} = Code.eval_string(str)
    {_, _, version} = Map.get(map, dep)
    version
  end

  def run(_args) do
    Mix.Project.get!
    #version = get_dep_version(:ex_doc)
    lock = Mix.Dep.Lock.read
    {_, _, version} = lock.ex_doc
    Mix.shell.info "Generating docs... with ex_doc version #{version}"
    Mix.Tasks.Docs.run(~w(--output output/#{version} --main README --readme README.md))
  end
end