defmodule OpenCode.Generated.InstallationUpdateAvailable do
  @moduledoc """
  Provides struct and type for a InstallationUpdateAvailable
  """

  @type t :: %__MODULE__{
          data: OpenCode.Generated.InstallationUpdateAvailableData.t(),
          durable: OpenCode.Generated.InstallationUpdateAvailableDurable.t() | nil,
          id: String.t(),
          location: OpenCode.Generated.LocationRef.t() | nil,
          metadata: map | nil,
          type: String.t()
        }

  defstruct [:data, :durable, :id, :location, :metadata, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      data: {OpenCode.Generated.InstallationUpdateAvailableData, :t},
      durable: {OpenCode.Generated.InstallationUpdateAvailableDurable, :t},
      id: :string,
      location: {OpenCode.Generated.LocationRef, :t},
      metadata: :map,
      type: {:const, "installation.update-available"}
    ]
  end
end
