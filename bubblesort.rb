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

  swapped = true
  while swapped {
    swapped = false
    yield
  }
  array
end


puts bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end