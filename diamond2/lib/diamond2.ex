defmodule Diamond2 do
  @moduledoc """
  Documentation for `Diamond2`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Diamond2.hello()
      :world

  """
  def hello do
    :world
  end

  def display, do: ""
  def display(letter) do
    cond do
      letter == "A" -> letter
      letter == "B" -> " A\nB B\n A\n"
      true ->
          """
          #{spaces(2)}#{a()}
          #{spaces(1)}#{b()}
          #{c()}
          #{spaces(1)}#{b()}
          #{spaces(2)}#{a()}
          """
    end

  end

  def a do
    "A"
  end

  def b do
    line(1, 1)
    # "#{letter(2)}#{spaces(1)}#{letter(2)}"
    # 2
  end

  def c do
    line(2, 3)

    # "C#{spaces(3)}C"
    # 3
  end

  def d do
    "D#{spaces(5)}D"
    # 4
  end

  def spaces(num) do
    String.duplicate(" ", num)
  end

  def generateMiddleSpacesForLetter(letter) do
    letters = "ABCD"

    num = length(letters)
    "#{spaces(num - 1)}#{letter}#{spaces(num - 1)}"
  end

  def line(index, space) do
    "#{letter(index)}#{spaces(space)}#{letter(index)}"
  end

  def letter(index) do
    letters = "ABCD"
    String.at(letters, index)
  end
end
