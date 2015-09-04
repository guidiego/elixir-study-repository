defmodule MiscTest do
  use ExUnit.Case

  test "If add() cam sum two numbers" do
    assert Misc.add(1,1) == 2
  end

  test "If mutiply() will mutiply two numbers" do
    assert Misc.mutiply(2,2) == 4
  end

  test "If div() wil divide two numbers" do
    assert Misc.div(100,4) == 25
  end

  test "If div() will divide for 0" do
    assert Misc.div(100,0) == "Infinity"
  end
end
