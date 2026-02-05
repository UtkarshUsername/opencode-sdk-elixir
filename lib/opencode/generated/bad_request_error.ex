defmodule OpenCode.Generated.BadRequestError do
  @moduledoc """
  Provides struct and type for a BadRequestError
  """

  @type t :: %__MODULE__{data: map, errors: [map], success: false}

  defstruct [:data, :errors, :success]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: :map, errors: [:map], success: {:const, false}]
  end
end
