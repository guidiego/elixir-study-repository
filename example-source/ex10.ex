defmodule Chop do
  #Guess Magic Methods
  def guess(n, first..last) when n < last do
    IO.puts "It is #{last}"
    guess(n, dec(first, last))
  end

  def guess(n, first..last) when n > last do
    IO.puts "It is #{last}"
    guess(n, inc(first, last))
  end

  def guess(n, first..last) when n == last do
    IO.puts "It is #{last}"
    last
  end

  # Decremeant Number
  def dec(first, last) when first != 1 do
    first..(last - round((last - first) / 2))
  end

  def dec(first, last) do
    1..round(last / 2)
  end

  #Incremeant Number
  def inc(first, last) do
    last..round(last + (last/2))
  end

end

#Chop V1
Chop.guess(273, 1..500);
