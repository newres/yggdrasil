defmodule Yggdrasil.World do
  @moduledoc """
  A resource representing a world in Yggdrasil.
  """

  use Ash.Resource,
    # in-memory store
    data_layer: Ash.DataLayer.Ets,
    domain: Yggdrasil

  actions do
    create :create do
      accept [:name, :description]
    end

    update :update do
      accept [:description]
    end

    # Provide default actions
    defaults [:read, :destroy]
  end

  attributes do
    # Primary key
    uuid_primary_key :id

    # World name and description
    attribute :name, :string, allow_nil?: false, public?: true
    attribute :description, :string, public?: true
  end
end
