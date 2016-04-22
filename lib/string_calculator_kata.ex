defmodule StringCalculatorKata do
  def calculate(numbers) do
    result = numbers == "" && 0 || elem(Integer.parse(numbers), 0) 
    result
  end
end
