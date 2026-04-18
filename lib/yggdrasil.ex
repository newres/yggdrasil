defmodule Yggdrasil do
  @moduledoc """
  The Yggdrasil domain — acts as the trunk of the tree
  and organizes all resources like World and Character.
  """

  use Ash.Domain

  resources do
    # Resources will be registered here
    resource Yggdrasil.World
  end
end
