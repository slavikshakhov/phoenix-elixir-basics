defmodule Proj.Offices do
  @moduledoc """
  The Offices context.
  """

  import Ecto.Query, warn: false
  alias Proj.Repo

  alias Proj.Offices.Office
  require String

  @doc """
  Returns the list of offices.

  ## Examples

      iex> list_offices()
      [%Office{}, ...]

  """
  def list_offices do
    Repo.all(Office)
  end

  def list_offices(criteria) do
    query = from(office in Office)
    Enum.reduce(criteria, query, fn {:pagination, %{page: page, per_page: per_page}}, query -> 
      from q in query, offset: ^((page - 1) * per_page), limit: ^per_page
    end)
    |> Repo.all()
  end

  

  def get_matches(code) do
    list_offices() 
      |> Enum.filter(&(&1.code |> String.starts_with?(code)))
  end

  def get_matched_codes(pref) do
    from(office in Office, select: office.code) |> Repo.all()
    |> Enum.filter(&(&1 |> String.starts_with?(pref)))
    
  end

  def get_matches_by_prices(prices) do    
    from(office in Office, where: office.price in ^prices) |> Repo.all()   
  end

  @doc """
  Gets a single office.

  Raises `Ecto.NoResultsError` if the Office does not exist.

  ## Examples

      iex> get_office!(123)
      %Office{}

      iex> get_office!(456)
      ** (Ecto.NoResultsError)

  """
  def get_office!(id), do: Repo.get!(Office, id)

  @doc """
  Creates a office.

  ## Examples

      iex> create_office(%{field: value})
      {:ok, %Office{}}

      iex> create_office(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_office(attrs \\ %{}) do
    %Office{}
    |> Office.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a office.

  ## Examples

      iex> update_office(office, %{field: new_value})
      {:ok, %Office{}}

      iex> update_office(office, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_office(%Office{} = office, attrs) do
    office
    |> Office.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a office.

  ## Examples

      iex> delete_office(office)
      {:ok, %Office{}}

      iex> delete_office(office)
      {:error, %Ecto.Changeset{}}

  """
  def delete_office(%Office{} = office) do
    Repo.delete(office)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking office changes.

  ## Examples

      iex> change_office(office)
      %Ecto.Changeset{data: %Office{}}

  """
  def change_office(%Office{} = office, attrs \\ %{}) do
    Office.changeset(office, attrs)
  end
end
