# Classic Algotithim to do note
defmodule Student do
  def endNote(x, y) do
    (x + y) / 2
  end

  def situation(note) do
    cond do
      note >= 6 ->
        "APPROVED"
      note < 6 and note >= 4 ->
        "ANOTHER TEST WILL BE APPLICATED"
      note < 4 ->
        "FAIL"
    end
  end

  def run(students, i) when i == 0 do
    IO.puts elem(elem(students, i), 0) <> " - Situation : " <> situation(endNote(elem(elem(students, i),1), elem(elem(students, i),2)))
  end

  def run(students, i) do
    IO.puts elem(elem(students, i),0) <> " - Situation : " <> situation(endNote(elem(elem(students, i),1), elem(elem(students, i),2)))
    run(students, i - 1)
  end
end

studentInfos = {
  {"Guilherme", 8, 10},
  {"Bianca" , 6, 5},
  {"Luiz", 5 , 2}
}

Student.run(studentInfos, 2)
