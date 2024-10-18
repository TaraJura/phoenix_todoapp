defmodule Todoapp.Greeter do
  use GenServer

  def start_link(name: name) do
    GenServer.start_link(__MODULE__, nil, name: name)
  end

  def ahoj(greeter) do
    GenServer.cast(greeter, :ahoj)
  end

  def count(greeter) do
    GenServer.call(greeter, :count)
  end

  @impl true
  def init(_) do
    IO.puts("Greeter started")
    {:ok, 0}
  end

  @impl true
  def handle_cast(:ahoj, count) do
    IO.puts("Ahoj")
    {:noreply, count + 1}
  end

  @impl true
  def handle_call(:count, _from, count) do
    {:reply, count, count}
  end
end
