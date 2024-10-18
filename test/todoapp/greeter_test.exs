defmodule Todoapp.GreeterTest do
  use ExUnit.Case, async: true

  test "returns count" do
    {:ok, pid} = GenServer.start_link(Todoapp.Greeter, [])
    GenServer.cast(pid, :ahoj)
    GenServer.cast(pid, :ahoj)
    assert GenServer.call(pid, :count) == 2
  end
end
