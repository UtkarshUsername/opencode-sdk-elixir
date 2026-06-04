defmodule OpenCode.Generated.SkillV2Info do
  @moduledoc """
  Provides struct and type for a SkillV2Info
  """

  @type t :: %__MODULE__{
          content: String.t(),
          description: String.t() | nil,
          location: String.t(),
          name: String.t(),
          slash: boolean | nil
        }

  defstruct [:content, :description, :location, :name, :slash]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [content: :string, description: :string, location: :string, name: :string, slash: :boolean]
  end
end
