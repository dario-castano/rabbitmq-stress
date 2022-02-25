defmodule RabbitmqStressTest do
  use ExUnit.Case
  doctest RabbitmqStress

  test "greets the world" do
    assert RabbitmqStress.hello() == :world
  end
end
