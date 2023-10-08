defmodule ElixirGist.Gists do
  @moduledoc """
  The Gists context.
  """

  import Ecto.Query, warn: false
  alias ElixirGist.Repo

  alias ElixirGist.Gists.Gist

  @doc """
  Returns the list of gists.

  ## Examples

      iex> list_gists()
      [%Gist{}, ...]

  """
  def list_gists do
    Repo.all(Gist)
  end

  @doc """
  Gets a single gist.

  Raises `Ecto.NoResultsError` if the Gist does not exist.

  ## Examples

      iex> get_gist!(123)
      %Gist{}

      iex> get_gist!(456)
      ** (Ecto.NoResultsError)

  """
  def get_gist!(id), do: Repo.get!(Gist, id)

  @doc """
  Creates a gist.

  ## Examples

      iex> create_gist(%{field: value})
      {:ok, %Gist{}}

      iex> create_gist(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_gist(user, attrs \\ %{}) do
    user
    |> Ecto.build_assoc(:gists)
    |> Gist.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a gist.

  ## Examples

      iex> update_gist(gist, %{field: new_value})
      {:ok, %Gist{}}

      iex> update_gist(gist, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_gist(%Gist{} = gist, attrs) do
    gist
    |> Gist.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a gist.

  ## Examples

      iex> delete_gist(gist)
      {:ok, %Gist{}}

      iex> delete_gist(gist)
      {:error, %Ecto.Changeset{}}

  """
  def delete_gist(%Gist{} = gist) do
    Repo.delete(gist)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking gist changes.

  ## Examples

      iex> change_gist(gist)
      %Ecto.Changeset{data: %Gist{}}

  """
  def change_gist(%Gist{} = gist, attrs \\ %{}) do
    Gist.changeset(gist, attrs)
  end

  alias ElixirGist.Gists.Saved_Gist

  @doc """
  Returns the list of saved_gists.

  ## Examples

      iex> list_saved_gists()
      [%Saved_Gist{}, ...]

  """
  def list_saved_gists do
    Repo.all(Saved_Gist)
  end

  @doc """
  Gets a single saved__gist.

  Raises `Ecto.NoResultsError` if the Saved  gist does not exist.

  ## Examples

      iex> get_saved__gist!(123)
      %Saved_Gist{}

      iex> get_saved__gist!(456)
      ** (Ecto.NoResultsError)

  """
  def get_saved__gist!(id), do: Repo.get!(Saved_Gist, id)

  @doc """
  Creates a saved__gist.

  ## Examples

      iex> create_saved__gist(%{field: value})
      {:ok, %Saved_Gist{}}

      iex> create_saved__gist(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_saved__gist(user, attrs \\ %{}) do
    user
    |> Ecto.build_assoc(:saved_gists)
    |> Saved_Gist.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a saved__gist.

  ## Examples

      iex> update_saved__gist(saved__gist, %{field: new_value})
      {:ok, %Saved_Gist{}}

      iex> update_saved__gist(saved__gist, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_saved__gist(%Saved_Gist{} = saved__gist, attrs) do
    saved__gist
    |> Saved_Gist.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a saved__gist.

  ## Examples

      iex> delete_saved__gist(saved__gist)
      {:ok, %Saved_Gist{}}

      iex> delete_saved__gist(saved__gist)
      {:error, %Ecto.Changeset{}}

  """
  def delete_saved__gist(%Saved_Gist{} = saved__gist) do
    Repo.delete(saved__gist)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking saved__gist changes.

  ## Examples

      iex> change_saved__gist(saved__gist)
      %Ecto.Changeset{data: %Saved_Gist{}}

  """
  def change_saved__gist(%Saved_Gist{} = saved__gist, attrs \\ %{}) do
    Saved_Gist.changeset(saved__gist, attrs)
  end
end
