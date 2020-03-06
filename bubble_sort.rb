def bubble_sort(arr)
  if arr.length > 1
    k = arr.length
    while k > 1
      i = 0
      while i < k - 1
        arr[i], arr[i + 1] = arr[i + 1], arr[i] if arr[i + 1] < arr[i]
        i += 1
      end
      k -= 1
    end
  end
  return arr
end

