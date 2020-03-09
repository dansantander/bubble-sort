def bubble_sort(list)
  return list if list.size <= 1

  swapped = true
  while swapped do
    swapped = false
    0.upto(list.size - 2) do |i|
      if list[i] > list[i + 1]
        list[i], list[i + 1] = list[i + 1], list[i] # swap values
        swapped = true
      end
    end
  end
  list
end


def bubble_sort_by(array)
  return array if array.size <= 1

  len = array.length - 1 
  len.step(1, -1) { |a| 
    (0...a).each do |i| 
      test = yield(array[i], array[i + 1]) 
      next unless test.positive? 
      temp = array[i] 
      array[i] = array[i + 1] 
      array[i + 1] = temp
    end
  }
  array
end

bubble_array = [98, 7, 52, 9, 3, 24, 0, 16]
array = ["hi", "hello", "hey"]

puts "#{bubble_sort(bubble_array)}"
puts "#{bubble_sort_by(["hi","hello","hey"]) do |left,right|
     left.length - right.length
end}"