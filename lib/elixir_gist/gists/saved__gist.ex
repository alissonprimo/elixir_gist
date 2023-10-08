defmodule ElixirGist.Gists.Saved_Gist do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "saved_gists" do
    belongs_to :user, ElixirGist.Accounts.User
    belongs_to :gist, ElixirGist.Gists.Gist

    timestamps()
  end

  @doc false
  def changeset(saved__gist, attrs) do
    saved__gist
    |> cast(attrs, [:user_id, :gist_id])
    |> validate_required([:user_id, :gist_id])
  end
end
