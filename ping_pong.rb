def array_generator(number)
  array = []
  i = 0

  if number >= 10
    while i < number do
      x = rand(31)
      if !array.include?(x)
        array[i] = x
        i+=1
      end
    end
  end

  return array

end


def best_range_finder(array)
  array = array.sort.uniq
  current_length = 0
  max_length = [0]
  max_result = 0

  array.each_with_index do |element, i|
    if i < array.length - 1
      if element + 1 == array[i+1]
        max = element + 1
        current_length += 1
      else
        if current_length > max_length[-1]
          max_result = array[i]
          max_length.push(current_length)
        end
        current_length = 0
      end
    elsif current_length > max_length[-1]
      max_result = array[i]
      max_length.push(current_length)
    end
  end

  return [max_result - max_length.max, max_result]
end

example = array_generator(10)

print("The random array is #{example}")
puts('')
print("The best range in the array is #{best_range_finder(example)}")
