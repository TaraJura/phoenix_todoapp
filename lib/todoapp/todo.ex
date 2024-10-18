defmodule Todoapp.Todo do
  use Ecto.Schema

  schema "todos" do
    field :description, :string
    field :done, :boolean
  end
end
