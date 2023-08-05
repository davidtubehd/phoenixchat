defmodule ChatWeb.UserListTest do
    use ExUnit.Case, async: true
    use Wallaby.Feature
    import Wallaby.Query, only: [css: 2, text_field: 1, button: 1]
  
    @tag timeout: :infinity
    feature "users can sent message", %{session: session} do
      for item <- 1..1000 do
      session
      |> visit("/?name=#{item}")
      |> fill_in(text_field("chat-input"), with: "This is the message sent by user #{item}")
      |> click(button("sendButton"))
    end 
    end

    feature "users have names", %{session: session} do
      session
      |> visit("/?name=user")
      |> find(Query.css(".user", count: 3))
      |> List.first()
      |> assert_has(Query.css(".user-name", text: "Chris"))
    end
  end