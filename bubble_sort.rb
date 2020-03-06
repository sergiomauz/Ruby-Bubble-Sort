def bubble_sort(arr)  
  k = arr.length
  while k > 1
    i = 0
    while i < k - 1
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if arr[i + 1] < arr[i]
      i += 1
    end
    k -= 1
    end
  return arr
end
