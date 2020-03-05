def print_array(arr)
  i = 0
  s = ''
  while i < arr.length
    s = s + ' ' + arr[i].to_s
    i += 1
  end
  puts (s+"\n")
end

def bubble_sort_by(arr)
  if arr.length > 1
    k = arr.length
  while k > 1
      i = 0 
      while (i < k - 1)
        if yield(arr[i], arr[i + 1]) > 0
          arr[i], arr[i + 1] = arr[i + 1], arr[i]
        end
        i = i + 1
      end
      k = k - 1
    end
  end  

  return arr
end


new_array = bubble_sort_by(["hi","hello","hey", "h"]) do |left, right|
  left.length - right.length
end

puts new_array