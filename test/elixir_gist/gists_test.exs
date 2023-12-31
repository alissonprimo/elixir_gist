defmodule ElixirGist.GistsTest do
  use ElixirGist.DataCase

  alias ElixirGist.Gists

  describe "gists" do
    alias ElixirGist.Gists.Gist

    import ElixirGist.GistsFixtures

    @invalid_attrs %{name: nil, description: nil, markup_text: nil}

    test "list_gists/0 returns all gists" do
      gist = gist_fixture()
      assert Gists.list_gists() == [gist]
    end

    test "get_gist!/1 returns the gist with given id" do
      gist = gist_fixture()
      assert Gists.get_gist!(gist.id) == gist
    end

    test "create_gist/1 with valid data creates a gist" do
      valid_attrs = %{name: "some name", description: "some description", markup_text: "some markup_text"}

      assert {:ok, %Gist{} = gist} = Gists.create_gist(valid_attrs)
      assert gist.name == "some name"
      assert gist.description == "some description"
      assert gist.markup_text == "some markup_text"
    end

    test "create_gist/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Gists.create_gist(@invalid_attrs)
    end

    test "update_gist/2 with valid data updates the gist" do
      gist = gist_fixture()
      update_attrs = %{name: "some updated name", description: "some updated description", markup_text: "some updated markup_text"}

      assert {:ok, %Gist{} = gist} = Gists.update_gist(gist, update_attrs)
      assert gist.name == "some updated name"
      assert gist.description == "some updated description"
      assert gist.markup_text == "some updated markup_text"
    end

    test "update_gist/2 with invalid data returns error changeset" do
      gist = gist_fixture()
      assert {:error, %Ecto.Changeset{}} = Gists.update_gist(gist, @invalid_attrs)
      assert gist == Gists.get_gist!(gist.id)
    end

    test "delete_gist/1 deletes the gist" do
      gist = gist_fixture()
      assert {:ok, %Gist{}} = Gists.delete_gist(gist)
      assert_raise Ecto.NoResultsError, fn -> Gists.get_gist!(gist.id) end
    end

    test "change_gist/1 returns a gist changeset" do
      gist = gist_fixture()
      assert %Ecto.Changeset{} = Gists.change_gist(gist)
    end
  end

  describe "saved_gists" do
    alias ElixirGist.Gists.Saved_Gist

    import ElixirGist.GistsFixtures

    @invalid_attrs %{}

    test "list_saved_gists/0 returns all saved_gists" do
      saved__gist = saved__gist_fixture()
      assert Gists.list_saved_gists() == [saved__gist]
    end

    test "get_saved__gist!/1 returns the saved__gist with given id" do
      saved__gist = saved__gist_fixture()
      assert Gists.get_saved__gist!(saved__gist.id) == saved__gist
    end

    test "create_saved__gist/1 with valid data creates a saved__gist" do
      valid_attrs = %{}

      assert {:ok, %Saved_Gist{} = saved__gist} = Gists.create_saved__gist(valid_attrs)
    end

    test "create_saved__gist/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Gists.create_saved__gist(@invalid_attrs)
    end

    test "update_saved__gist/2 with valid data updates the saved__gist" do
      saved__gist = saved__gist_fixture()
      update_attrs = %{}

      assert {:ok, %Saved_Gist{} = saved__gist} = Gists.update_saved__gist(saved__gist, update_attrs)
    end

    test "update_saved__gist/2 with invalid data returns error changeset" do
      saved__gist = saved__gist_fixture()
      assert {:error, %Ecto.Changeset{}} = Gists.update_saved__gist(saved__gist, @invalid_attrs)
      assert saved__gist == Gists.get_saved__gist!(saved__gist.id)
    end

    test "delete_saved__gist/1 deletes the saved__gist" do
      saved__gist = saved__gist_fixture()
      assert {:ok, %Saved_Gist{}} = Gists.delete_saved__gist(saved__gist)
      assert_raise Ecto.NoResultsError, fn -> Gists.get_saved__gist!(saved__gist.id) end
    end

    test "change_saved__gist/1 returns a saved__gist changeset" do
      saved__gist = saved__gist_fixture()
      assert %Ecto.Changeset{} = Gists.change_saved__gist(saved__gist)
    end
  end
end
