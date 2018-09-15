defmodule BuildFeenix.Dsl.Router do
  defmacro get(path, module, action) do
    {_vars, path_info} = Plug.Router.Utils.build_path_match(path)

    quote do
      defp do_match(conn, "GET", unquote(path_info)) do
        apply(unquote(module), unquote(action), [conn, conn.params])
      end
    end
  end

  defmacro post(path, module, action) do
    {_vars, path_info} = Plug.Router.Utils.build_path_match(path)

    quote do
      defp do_match(conn, "POST", unquote(path_info)) do
        apply(unquote(module), unquote(action), [conn, conn.body_params])
      end
    end
  end
end
