def getAge(presentYear, birthYear) do
  presentYear - birthYear
end

name = "Guilherme Diego"

IO.puts "My name is " <> name <> " and I've " <> to_string(getAge(2015, 1994)) <> "!"
