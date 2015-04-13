defmodule ActualEdlabDemo.User do
  use ActualEdlabDemo.Web, :model

  schema "users" do
    field :first_name, :string
    field :last_name, :string
    field :email, :string
    field :password, :string

    timestamps
  end

  before_insert :hash_password


  @required_fields ~w(first_name last_name email password)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If `params` are nil, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ nil) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end

  def hash_password(changeset) do
    new_password = changeset.changes.password |> string_to_md5
    new_changes = %{changeset.changes | password: new_password}
    %{changeset | changes: new_changes}
  end

  defp string_to_md5(some_string) do
    :crypto.hash(:md5, some_string) |> Base.encode64
  end

end
