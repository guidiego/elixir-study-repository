defmodule Misc do
  def add(x,y) do
    x + y
  end

  def mutiply(x,y) do
    x * y
  end

  def div(x,y) do
    if y == 0 do
      "Infinity"
    else
      x / y
    end

  end
end
