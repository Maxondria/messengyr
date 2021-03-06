defmodule Messengyr.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string, unique: true
    field :username, :string, unique: true
    field :encrypted_password, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:username, :email, :encrypted_password])
    |> validate_required([:username, :email, :encrypted_password])
  end
end
