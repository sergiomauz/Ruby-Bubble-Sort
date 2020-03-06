def bubble_sort_by(arr)  
  k = arr.length
  while k > 1
    i = 0
    while i < k - 1
      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end
      i += 1
    end
    k -= 1
  end  
  return arr
end
