defmodule Exred.Node.TriggerTest do
  use ExUnit.Case
  doctest Exred.Node.Trigger

  test "greets the world" do
    msg = "hello"

    state =
      %{
        node_id: :test,
        send_event: &IO.inspect({&1, &2}, label: "SENDING EVENT")
      }
      |> Enum.into(Exred.Node.Trigger.attributes())

    assert Exred.Node.Trigger.handle_msg(msg, state) == {msg, state}
  end
end
