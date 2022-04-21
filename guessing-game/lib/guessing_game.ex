defmodule GuessingGame do

  def compare(number, guess \\ :no_guess)

  def compare(_, :no_guess) do
    "Make a guess"
  end

  def compare(number, guess) when number == guess do
    "Correct"
  end

  def compare(number, guess) when number - 1 == guess do
    "So close"
  end

  def compare(number, guess) when number + 1 == guess do
    "So close"
  end

  def compare(number, guess) when number > guess do
    "Too low"
  end

  def compare(number, guess) when number < guess do
    "Too high"
  end
end
