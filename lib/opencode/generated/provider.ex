defmodule OpenCode.Generated.Provider do
  @moduledoc """
  Provides struct and type for a Provider
  """

  @type t :: %__MODULE__{
          env: [String.t()],
          id: String.t(),
          key: String.t() | nil,
          models: map,
          name: String.t(),
          options: map,
          source: String.t()
        }

  defstruct [:env, :id, :key, :models, :name, :options, :source]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      env: [:string],
      id: :string,
      key: :string,
      models: :map,
      name: :string,
      options: :map,
      source: {:enum, ["env", "config", "custom", "api"]}
    ]
  end
end
