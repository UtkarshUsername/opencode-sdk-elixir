defmodule OpenCode.Generated.QuestionV2Info do
  @moduledoc """
  Provides struct and type for a QuestionV2Info
  """

  @type t :: %__MODULE__{
          custom: boolean | nil,
          header: String.t(),
          multiple: boolean | nil,
          options: [OpenCode.Generated.QuestionV2Option.t()],
          question: String.t()
        }

  defstruct [:custom, :header, :multiple, :options, :question]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      custom: :boolean,
      header: :string,
      multiple: :boolean,
      options: [{OpenCode.Generated.QuestionV2Option, :t}],
      question: :string
    ]
  end
end
