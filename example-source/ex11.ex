
defmodule Economy do
  #First Tax
  def subFirstTax(val) when val >= 2000 do val - 100 end
  def subFirstTax(val) when val < 2000 do val end

  #Second Tax
  def subSecondtax(val) do val - (val * 0.1) end

  #Discounts
  def discounts(val, dis) do val - dis end
end

salary = Economy.subFirstTax(2500)
         |> Economy.subSecondtax()
         |> Economy.discounts(300)

IO.puts "My salary is #{salary}"
