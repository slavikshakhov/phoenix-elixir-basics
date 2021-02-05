defmodule Proj.OfficesTest do
  use Proj.DataCase

  alias Proj.Offices

  describe "offices" do
    alias Proj.Offices.Office

    @valid_attrs %{city: "some city", code: "some code", status: true}
    @update_attrs %{city: "some updated city", code: "some updated code", status: false}
    @invalid_attrs %{city: nil, code: nil, status: nil}

    def office_fixture(attrs \\ %{}) do
      {:ok, office} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Offices.create_office()

      office
    end

    test "list_offices/0 returns all offices" do
      office = office_fixture()
      assert Offices.list_offices() == [office]
    end

    test "get_office!/1 returns the office with given id" do
      office = office_fixture()
      assert Offices.get_office!(office.id) == office
    end

    test "create_office/1 with valid data creates a office" do
      assert {:ok, %Office{} = office} = Offices.create_office(@valid_attrs)
      assert office.city == "some city"
      assert office.code == "some code"
      assert office.status == true
    end

    test "create_office/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Offices.create_office(@invalid_attrs)
    end

    test "update_office/2 with valid data updates the office" do
      office = office_fixture()
      assert {:ok, %Office{} = office} = Offices.update_office(office, @update_attrs)
      assert office.city == "some updated city"
      assert office.code == "some updated code"
      assert office.status == false
    end

    test "update_office/2 with invalid data returns error changeset" do
      office = office_fixture()
      assert {:error, %Ecto.Changeset{}} = Offices.update_office(office, @invalid_attrs)
      assert office == Offices.get_office!(office.id)
    end

    test "delete_office/1 deletes the office" do
      office = office_fixture()
      assert {:ok, %Office{}} = Offices.delete_office(office)
      assert_raise Ecto.NoResultsError, fn -> Offices.get_office!(office.id) end
    end

    test "change_office/1 returns a office changeset" do
      office = office_fixture()
      assert %Ecto.Changeset{} = Offices.change_office(office)
    end
  end
end
