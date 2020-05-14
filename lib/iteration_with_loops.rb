require 'pry'
def find_min_in_nested_arrays(src)
outer_results = []
row_index = 0
while row_index < src.count do
  element_index = 0
  min_of_nested_array = []
  while element_index < src[row_index].count do
      if src[row_index][element_index] < src[row_index][element_index -1]
    min_of_nested_array[row_index] = src[row_index][element_index]
    end
    element_index += 1
  end
  outer_results << min_of_nested_array
  row_index += 1
end
p outer_results
end