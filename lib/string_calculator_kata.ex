defmodule StringCalculatorKata do
  def calculate(numbers) do
    numbers == "" && 0 || sum_list(Enum.map(String.split(numbers, ", "), &(elem(Integer.parse(&1),0))))
  end

  defp sum_list([]) do
    0
  end

  defp sum_list([h|t]) do
    h + sum_list(t)
  end

end
