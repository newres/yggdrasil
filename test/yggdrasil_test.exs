defmodule YggdrasilTest do
  use ExUnit.Case
  doctest Yggdrasil

  test "greets the world" do
    assert Yggdrasil.hello() == :world
  end
end
