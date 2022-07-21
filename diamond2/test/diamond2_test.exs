defmodule Diamond2Test do
  use ExUnit.Case
  doctest Diamond2

  test "greets the world" do
    assert Diamond2.hello() == :world
  end

  test "Given 'A' returns only 'A'" do
    assert Diamond2.display("A") == "A"
  end

  test "Given no arguments returns an empty string" do
    assert Diamond2.display == ""
  end

  test "Given 'B' returns a four letter diamond" do
    diamond = " A\nB B\n A\n"
    assert Diamond2.display("B") == diamond
  end

  test "Given 'C' returns a six letter diamond" do
    diamond = """
      A
     B B
    C   C
     B B
      A
    """
    assert Diamond2.display("C") == diamond
  end
end

diamond =
"""
A
B B
C   C
D     D
B B
A
"""
