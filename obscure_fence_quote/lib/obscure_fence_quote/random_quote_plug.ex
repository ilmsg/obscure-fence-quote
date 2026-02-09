defmodule ObscureFenceQuote.RandomQuotePlug do
  import Plug.Conn

  def init(opts), do: opts

  def call(conn, _opts) do
    quotes = [
      "Elixir is awesome!",
      "Functional programming is powerful.",
      "Plug makes web servers easy."
    ]

    selected_quote = Enum.random(quotes)

    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, selected_quote)
  end
end
