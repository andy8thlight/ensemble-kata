defmodule DiamondTest do
  use ExUnit.Case
  doctest Diamond

  test "greets the world" do
    assert Diamond.hello() == :world
  end

  test "diamond returns A" do
    assert Diamond.print_diamond("A") == "A\n"
  end

  test "diamond returns B" do
    assert Diamond.print_diamond("B") == " A\nB B\n A\n"
  end

  test "diamond returns C" do
    assert Diamond.print_diamond("C") == "  A\n B B\nC   C\n B B\n  A\n"
  end

  test "diamond returns D" do
    assert Diamond.print_diamond("D") == "   A\n  B B\n C   C\nD     D\n C   C\n  B B\n   A\n"
  end


  test "spaces for letter A" do
    assert Diamond.middle_spaces_for_letter(0) == 0
  end

  test "spaces for letter B" do
    assert Diamond.middle_spaces_for_letter(1) == 1
  end

  test "spaces for letter J" do
    assert Diamond.middle_spaces_for_letter(10) == 19
  end

  test "letter gap" do
    assert Diamond.middle_gap(1) == " "
    assert Diamond.middle_gap(2) == "   "
    assert Diamond.middle_gap(9) == "                 "
  end

  test "letter row for J" do
    assert Diamond.letter_row(1) == "B B\n"
    assert Diamond.letter_row(2) == "C   C\n"
    assert Diamond.letter_row(9) == "J                 J\n"
  end

  test "letter for index" do
    assert Diamond.get_letter_for_index(0) == "A"
    assert Diamond.get_letter_for_index(2) == "C"
    assert Diamond.get_letter_for_index(9) == "J"
  end

  test "prining" do
    IO.puts Diamond.print_diamond("C")
  end

# middle spaces
# E = 4, spaces = 7
# D = 3, spces = 5
# C = 2, spaces = 3
# B = 1, spaces = 1
# A = 0

# leading spaces (passed in E)
# E leading spaces = 0
# D leading spaces = 1
# C leading spaces = 2
# B leading spaces = 3
#



end
