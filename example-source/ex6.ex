defmodule Recursive do
  def repeatMessage(msg, times) when times == 1 do
    IO.puts msg
  end

  def repeatMessage(msg, times) do
    IO.puts msg
    repeatMessage(msg, times - 1)
  end
end

Recursive.repeatMessage("R U Mine?", 3)
