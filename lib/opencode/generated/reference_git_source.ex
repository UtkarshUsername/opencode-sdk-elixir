defmodule OpenCode.Generated.ReferenceGitSource do
  @moduledoc """
  Provides struct and type for a ReferenceGitSource
  """

  @type t :: %__MODULE__{
          branch: String.t() | nil,
          description: String.t() | nil,
          hidden: boolean | nil,
          repository: String.t(),
          type: String.t()
        }

  defstruct [:branch, :description, :hidden, :repository, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      branch: :string,
      description: :string,
      hidden: :boolean,
      repository: :string,
      type: {:const, "git"}
    ]
  end
end
