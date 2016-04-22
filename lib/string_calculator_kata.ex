defmodule StringCalculatorKata do
  def calculate(numbers) do
    default_empty_string_to_zero || sum_list(convert_string_to_list_of_numbers(numbers))
  end

  defp default_empty_string_to_zero(numbers) do
    numbers == "" && 0 
  end

  defp convert_string_to_list_of_numbers(numbers) do
    numbers_list = Enum.map(convert_to_array(numbers), &(elem(Integer.parse(&1),0)))
    check_for_negatives numbers_list
    numbers_list
  end

  defp check_for_negatives(numbers_list) do
    negative_list = Enum.filter(numbers_list, &(&1 < 0))
    unless(length(negative_list) == 0) do
      error_numbers = Enum.join(negative_list, " ")
      raise "Negative numbers are not alowed: #{error_numbers}"
    end
  end

  defp convert_to_array(numbers) do
    Enum.map(String.split(numbers, [",","\n"]), &(String.strip(&1)))
  end

  defp sum_list([]) do
    0
  end

  defp sum_list([h|t]) do
    h + sum_list(t)
  end

end
