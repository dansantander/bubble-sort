def bubble_sort(list)
  return list if list.size <= 1

  swapped = true
  while swapped
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
  len.step(1, -1) do |a|
    (0...a).each do |i|
      test = yield(array[i], array[i + 1])
      next unless test.positive?

      temp = array[i]
      array[i] = array[i + 1]
      array[i + 1] = temp
    end
  end
  array
end

bubble_array = [98, 7, 52, 9, 3, 24, 0, 16]
array = %w[hi hello hey]

print "#{bubble_sort(bubble_array)}\n"
print "#{bubble_sort_by(array) do |left, right|
  left.length - right.length
end}\n"
