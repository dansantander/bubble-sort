bubble_array = [98, 7, 52, 9, 3, 24, 0, 16]

def bubble_sort(list)
  return list if list.size <= 1

  swapped = true
  while swapped {
    swapped = false
    0.upto(list.size - 2) do |i|
      if list[i] > list[i + 1]
        list[i], list[i + 1] = list[i + 1], list[i] # swap values
        swapped = true
      end
    end
  }
  list
end

def bubble_sort_by (array)
  return array if array.size <= 1

  len = array.length - 1 # from the end of the array
  len.step(1, -1) { |a| # step back
    (0...a).each do |i| # and to each
      test = yield(array[i], array[i + 1]) # combination (array[i] = left, array[i+1] = right)
      next unless test.positive? # from end to start, n, n-1 to 0
      temp = array[i] # [temp] = [left]
      array[i] = array[i + 1] # [left] = [right]
      array[i + 1] = temp # a [right] = [temp]
    end
  }
  array
end


puts bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end
