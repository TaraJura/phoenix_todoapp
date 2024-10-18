defmodule Todoapp.Repo.Migrations.CreateTodos do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add :description, :string, null: false
      add :done, :boolean, default: false, null: false
    end
  end
end
