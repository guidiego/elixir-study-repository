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

defmodule Factorial do
  def of(x, a..b) when (a-1) == b do
    IO.puts to_string x
  end

  def of(a..b) do
    sum(a, (a+1)..b)
  end

  def of(x, a..b) do
    sum(x+a, (a+1)..b)
  end
end

Factorial.of(1..100)
