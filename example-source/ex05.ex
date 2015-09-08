defmodule FooFighters do
  def album(name) do
    cond do
      name == "Foo Fighters" ->
        "It's a classic"
        name == "The Colour ans the Shape" ->
          "DROP D ON THAT SHIT BABY"
        name == "There Is Nothing Left To Lose" ->
          "THE DAWM OF A EPIC MUSIC CALLED : LEARN TO FLY"
        name == "One by One" ->
          "ISN'T ONLY 'ALL MY LIFE' :/"
        name == "In your Honor" ->
          "B SIDE AT PART 2 <3"
        name == "Echoes, Silence, Patience & Grace" ->
          "FUCKING WHAT U SAY I LOVE THE OTHERS!"
        name == "Wasting Light" ->
          "YOUR ARE NOT ME! ARLANDRIAAAAAAAAAA"
        name == "Sonic Highways" ->
          "THX FOR THE AWESOME TVSERIE DAVE <3"
    end
  end

  def music(name) do
    if name == "R U Mine" do
      "Oh lord! This is Arctic Monkeys...."
    else
      "Maybe..."
    end
  end

  def setMyNote(note) do
    case note do
      note when note >= 8 -> "You rocks!"
      note when note < 8 and note >= 5 ->  "You have a problem!"
      note when note < 5 -> "BASTARD!"
    end
  end

end

IO.puts FooFighters.album("In your Honor")
IO.puts FooFighters.music("R U Mine")
IO.puts FooFighters.setMyNote(10)
