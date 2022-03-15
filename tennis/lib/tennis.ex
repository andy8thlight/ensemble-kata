defmodule Tennis do
  def score(p1points, p2points) do
    cond do
      is_win(p1points, p2points) -> "Win Player #{whose_advantage(p1points, p2points)}"
      is_advantage(p1points, p2points) -> "Advantage Player #{whose_advantage(p1points, p2points)}"
      p1points == p2points -> draw_scores(p1points)
      true -> "#{points_to_score(p1points)} - #{points_to_score(p2points)}"
    end
  end

  defp is_win(p1points, p2points) do
    (p1points >= 4 or p2points >= 4) and (abs(p1points - p2points) >= 2)
  end

  defp is_advantage(p1points, p2points) do
    (p1points >= 3 or p2points >= 3) and (abs(p1points - p2points) == 1)
  end

  defp whose_advantage(p1points, p2points) do
    if p1points > p2points, do: "1", else: "2"
  end

  defp draw_scores(p1points) do
    if p1points >= 3, do: "Deuce", else: "#{points_to_score(p1points)} All"
  end

  defp points_to_score(points) do
    case points do
      3 -> "Forty"
      2 -> "Thirty"
      1 -> "Fifteen"
      0 -> "Love"
    end
  end

end
