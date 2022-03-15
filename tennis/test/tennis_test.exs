defmodule TennisTest do
  use ExUnit.Case
  doctest Tennis

  # Win p1 or p2
  # Advantage for p1 or p2. More than 4 points, but one point clear other player, 4, 3   8, 7
  # Draw 2 - 2. Thirty - All. Deuce
  # Win over 4 points, 2 points clear than other player


  test "tests normal scores" do
    assert Tennis.score(1, 0) == "Fifteen - Love"
    assert Tennis.score(2, 0) == "Thirty - Love"
    assert Tennis.score(3, 0) == "Forty - Love"

    assert Tennis.score(0, 1) == "Love - Fifteen"
    assert Tennis.score(0, 2) == "Love - Thirty"
    assert Tennis.score(0, 3) == "Love - Forty"
  end

  test "test draw" do
    assert Tennis.score(0, 0) == "Love All"
    assert Tennis.score(1, 1) == "Fifteen All"
    assert Tennis.score(2, 2) == "Thirty All"
    assert Tennis.score(3, 3) == "Deuce"
    assert Tennis.score(4, 4) == "Deuce"
  end

  test "advantage" do
    assert Tennis.score(3, 2) == "Advantage Player 1"
    assert Tennis.score(4, 3) == "Advantage Player 1"
    assert Tennis.score(5, 4) == "Advantage Player 1"
    assert Tennis.score(2, 3) == "Advantage Player 2"
    assert Tennis.score(3, 4) == "Advantage Player 2"
    assert Tennis.score(4, 5) == "Advantage Player 2"
  end

  test "win" do
   assert Tennis.score(4, 0) == "Win Player 1"
   assert Tennis.score(0, 4) == "Win Player 2"
   assert Tennis.score(2, 4) == "Win Player 2"
   assert Tennis.score(4, 2) == "Win Player 1"
   assert Tennis.score(10, 8) == "Win Player 1"
   assert Tennis.score(8, 10) == "Win Player 2"
  end

end
