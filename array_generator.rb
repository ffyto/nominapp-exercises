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


print(array_generator(10))
