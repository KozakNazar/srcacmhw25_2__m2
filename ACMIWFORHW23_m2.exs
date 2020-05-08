###############################################################################
# Lviv'2020 // ACM // OpenCV faces detection use example by Elixir            #
#    file: acmiwforhw23_m2.exs                                                #
###############################################################################

input_data = [5, 7, 3, 4, 1, 9, 2, 8, 10, 6] 

defmodule QuickSort do
  def sort([]), do: []
  def sort([head|tail]) do
    {lesserPart, greaterPart} = Enum.partition(tail, &(&1 < head))
    sort(lesserPart) ++ [head] ++ sort(greaterPart)
  end
end

defmodule Printer do
  def print([]), do: []
  def print([currElement | others]) do
    #IO.write(inspect(currElement) <> " ")
    ((currElement |> inspect()) <> " ") |> IO.write()  
    print(others)
  end
end

#IO.inspect QuickSort.sort(input_data)

input = input_data 
output = QuickSort.sort(input)

IO.puts "input:"
Printer.print(input)
IO.write "\n"
IO.puts "output:"
Printer.print(output)
IO.write "\n"