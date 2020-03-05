def print_array(arr)
  i = 0
  s = ''
  while i < arr.length
    s = s + ' ' + arr[i].to_s
    i += 1
  end
  puts(s + "\n")
end

def bubble_sort_by(arr)
  if arr.length > 1
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
  end
  arr
end

new_array = bubble_sort_by(%W[hi hello hey h]) do |left, right|
  left.length - right.length
end

puts new_array
