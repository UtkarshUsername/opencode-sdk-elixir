defmodule OpenCode.Generated.SessionV2Info do
  @moduledoc """
  Provides struct and type for a SessionV2Info
  """

  @type t :: %__MODULE__{
          agent: String.t() | nil,
          cost: number,
          id: String.t(),
          location: OpenCode.Generated.LocationRef.t(),
          model: OpenCode.Generated.SessionV2InfoModel.t() | nil,
          parent_id: String.t() | nil,
          project_id: String.t(),
          subpath: String.t() | nil,
          time: OpenCode.Generated.SessionV2InfoTime.t(),
          title: String.t(),
          tokens: OpenCode.Generated.SessionV2InfoTokens.t()
        }

  defstruct [
    :agent,
    :cost,
    :id,
    :location,
    :model,
    :parent_id,
    :project_id,
    :subpath,
    :time,
    :title,
    :tokens
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      agent: :string,
      cost: :number,
      id: :string,
      location: {OpenCode.Generated.LocationRef, :t},
      model: {OpenCode.Generated.SessionV2InfoModel, :t},
      parent_id: :string,
      project_id: :string,
      subpath: :string,
      time: {OpenCode.Generated.SessionV2InfoTime, :t},
      title: :string,
      tokens: {OpenCode.Generated.SessionV2InfoTokens, :t}
    ]
  end
end
