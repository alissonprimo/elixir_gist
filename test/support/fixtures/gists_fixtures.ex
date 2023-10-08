defmodule ElixirGist.GistsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ElixirGist.Gists` context.
  """

  @doc """
  Generate a gist.
  """
  def gist_fixture(attrs \\ %{}) do
    {:ok, gist} =
      attrs
      |> Enum.into(%{
        name: "some name",
        description: "some description",
        markup_text: "some markup_text"
      })
      |> ElixirGist.Gists.create_gist()

    gist
  end

  @doc """
  Generate a saved__gist.
  """
  def saved__gist_fixture(attrs \\ %{}) do
    {:ok, saved__gist} =
      attrs
      |> Enum.into(%{

      })
      |> ElixirGist.Gists.create_saved__gist()

    saved__gist
  end
end
