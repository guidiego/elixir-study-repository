defmodule Person do
  def presentation(name, birthYear) do
    "My name is " <> name <> " and I've " <> to_string(2015 - birthYear) <> "!"
  end
end

IO.puts Person.presentation("Guilherme", 1994)
IO.puts Person.presentation("Bianca", 1995)
IO.puts Person.presentation("Mateus", 1996)
