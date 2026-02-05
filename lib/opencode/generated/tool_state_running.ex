defmodule OpenCode.Generated.ToolStateRunning do
  @moduledoc """
  Provides struct and type for a ToolStateRunning
  """

  @type t :: %__MODULE__{
          input: map,
          metadata: map | nil,
          status: String.t(),
          time: OpenCode.Generated.ToolStateRunningTime.t(),
          title: String.t() | nil
        }

  defstruct [:input, :metadata, :status, :time, :title]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      input: :map,
      metadata: :map,
      status: {:const, "running"},
      time: {OpenCode.Generated.ToolStateRunningTime, :t},
      title: :string
    ]
  end
end
