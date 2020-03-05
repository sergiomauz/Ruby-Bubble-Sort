def print_array(arr)
  i = 0
  s = ""
  while i < arr.length
    s = s + " " + arr[i].to_s
    i += 1
  end
  puts (s + "\n")
end
def bubble_sort(arr)
  if arr.length > 1
    k = arr.length
    while k > 1
      i = 0
      while i < k - 1
        if arr[i + 1] < arr[i]
          arr[i], arr[i + 1] = arr[i + 1], arr[i]
        end
        i += 1
      end
      k -= 1
    end
  end
  print_array(arr)
end

array_a = [4, 3, 78, 2, 0, 2]
bubble_sort(array_a)
