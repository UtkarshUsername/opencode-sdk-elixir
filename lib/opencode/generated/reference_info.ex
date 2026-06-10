defmodule OpenCode.Generated.ReferenceInfo do
  @moduledoc """
  Provides struct and type for a ReferenceInfo
  """

  @type t :: %__MODULE__{
          description: String.t() | nil,
          hidden: boolean | nil,
          name: String.t(),
          path: String.t(),
          source:
            OpenCode.Generated.ReferenceGitSource.t()
            | OpenCode.Generated.ReferenceLocalSource.t()
        }

  defstruct [:description, :hidden, :name, :path, :source]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      description: :string,
      hidden: :boolean,
      name: :string,
      path: :string,
      source:
        {:union,
         [
           {OpenCode.Generated.ReferenceGitSource, :t},
           {OpenCode.Generated.ReferenceLocalSource, :t}
         ]}
    ]
  end
end
