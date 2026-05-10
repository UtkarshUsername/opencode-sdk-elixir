defmodule OpenCode.Generated.SessionNextRetryError do
  @moduledoc """
  Provides struct and type for a SessionNextRetryError
  """

  @type t :: %__MODULE__{
          is_retryable: boolean,
          message: String.t(),
          metadata: map | nil,
          response_body: String.t() | nil,
          response_headers: map | nil,
          status_code: number | nil
        }

  defstruct [:is_retryable, :message, :metadata, :response_body, :response_headers, :status_code]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      is_retryable: :boolean,
      message: :string,
      metadata: :map,
      response_body: :string,
      response_headers: :map,
      status_code: :number
    ]
  end
end
