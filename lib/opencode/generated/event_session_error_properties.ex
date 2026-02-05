defmodule OpenCode.Generated.EventSessionErrorProperties do
  @moduledoc """
  Provides struct and type for a EventSessionErrorProperties
  """

  @type t :: %__MODULE__{
          error:
            OpenCode.Generated.APIError.t()
            | OpenCode.Generated.MessageAbortedError.t()
            | OpenCode.Generated.MessageOutputLengthError.t()
            | OpenCode.Generated.ProviderAuthError.t()
            | OpenCode.Generated.UnknownError.t()
            | nil,
          session_id: String.t() | nil
        }

  defstruct [:error, :session_id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      error:
        {:union,
         [
           {OpenCode.Generated.APIError, :t},
           {OpenCode.Generated.MessageAbortedError, :t},
           {OpenCode.Generated.MessageOutputLengthError, :t},
           {OpenCode.Generated.ProviderAuthError, :t},
           {OpenCode.Generated.UnknownError, :t}
         ]},
      session_id: :string
    ]
  end
end
