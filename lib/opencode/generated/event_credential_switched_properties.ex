defmodule OpenCode.Generated.EventCredentialSwitchedProperties do
  @moduledoc """
  Provides struct and type for a EventCredentialSwitchedProperties
  """

  @type t :: %__MODULE__{connector_id: String.t(), from: String.t() | nil, to: String.t() | nil}

  defstruct [:connector_id, :from, :to]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [connector_id: :string, from: :string, to: :string]
  end
end
