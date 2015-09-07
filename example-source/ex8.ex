defmodule Recursive do
  def sum(tuple, total, i) when i == 0 do
    total + elem(tuple,0)
  end

  def sum(tuple, total, i) do
    sum(tuple, total + elem(tuple,i), i - 1)
  end
end

test = {1,2,3}
IO.puts to_string(Recursive.sum(test, 0, 2))
