def bubble_sort_by(arr)
  k = arr.length
  while k > 1
    i = 0
    while i < k - 1
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if yield(arr[i], arr[i + 1]).positive?
      i += 1
    end
    k -= 1
  end
  arr
end
