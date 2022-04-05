defmodule ChonkOMeter do
  @external_resource Path.expand("./README.md")
  @moduledoc File.read!(Path.expand("./README.md"))
             |> String.split("<!-- README START -->")
             |> Enum.at(1)
             |> String.split("<!-- README END -->")
             |> List.first()

  @doc """
  Returns the Chonk rating for a given number of story points.

      iex> ChonkOMeter.story_points(5)
      "A Heckin' Chonker"
  """
  def story_points(points) when is_integer(points) and points >= 0 and points < 3 do
    "A Fine Boi"
  end

  def story_points(points) when is_integer(points) and points >= 3 and points < 5 do
    "He Chomnk"
  end

  def story_points(points) when is_integer(points) and points >= 5 and points < 8 do
    "A Heckin' Chonker"
  end

  def story_points(points) when is_integer(points) and points >= 8 and points < 10 do
    "H E F T Y C H O N K"
  end

  def story_points(points) when is_integer(points) and points >= 10 and points < 15 do
    "Mega Chonk"
  end

  def story_points(points) when is_integer(points) and points >= 15 do
    "Oh Lawd He Comin'"
  end
end
