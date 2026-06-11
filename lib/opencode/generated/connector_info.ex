defmodule OpenCode.Generated.ConnectorInfo do
  @moduledoc """
  Provides struct and type for a ConnectorInfo
  """

  @type t :: %__MODULE__{
          id: String.t(),
          methods: [
            OpenCode.Generated.ConnectorKeyMethod.t()
            | OpenCode.Generated.ConnectorOAuthMethod.t()
          ],
          name: String.t()
        }

  defstruct [:id, :methods, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      methods: [
        union: [
          {OpenCode.Generated.ConnectorKeyMethod, :t},
          {OpenCode.Generated.ConnectorOAuthMethod, :t}
        ]
      ],
      name: :string
    ]
  end
end
