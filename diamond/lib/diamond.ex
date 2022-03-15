defmodule Diamond do
  @moduledoc """
  Documentation for `Diamond`.
  """
  def hello do
    :world
  end

  def print_diamond(letter) do
    case letter do
      "D" -> "   A\n  #{letter_row(1)} #{letter_row(2)}#{letter_row(3)} #{letter_row(2)}  #{letter_row(1)}   A\n"
      "C" -> "  A\n #{letter_row(1)}#{letter_row(2)} #{letter_row(1)}  A\n"
      "B" -> " A\n#{letter_row(1)} A\n"
      _-> "A\n"
    end
  end

  def letter_row(character_index) do
    letter = get_letter_for_index(character_index)
    "#{letter}#{middle_gap(character_index)}#{letter}\n"
  end

  @spec get_letter_for_index(integer) :: nil | binary
  def get_letter_for_index(character_index) do
    String.at("ABCDEFGHIJKLMNOPQRSTUVWXYZ", character_index)
  end

  def middle_gap(character_index) do
    String.duplicate(" ", middle_spaces_for_letter(character_index))
  end

  def middle_spaces_for_letter(character_index) do
    if character_index > 0 do
      1 + (character_index - 1) * 2
    else
      0
    end
  end

end
