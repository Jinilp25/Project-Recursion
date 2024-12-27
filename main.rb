
def fibs(n)
  arr = []
  num = 0
  while arr.length < n
    if arr.length < 1
      arr << 0
    elsif arr.length < 2
      arr << 1
    else
      arr << (arr[num] + arr[num + 1])
      num += 1
    end
  end
  arr
end

def fibs_rec(n)
  if n < 1
    return []
  else
    arr = fibs_rec(n - 1)
    if arr.length < 2
      arr << arr.length
    else
      arr << arr[-1] + arr[-2]
    end
  end
  arr
end

def merge_sort(arr)
  new_arr = []
  n = arr.length
  return arr if n <= 1

  first_half = merge_sort(arr[0, n / 2])
  second_half = merge_sort(arr[n / 2, n])

  until first_half.empty? || second_half.empty?
    if first_half[0] < second_half[0]
      new_arr << first_half.shift
    else
      new_arr << second_half.shift
    end
  end

  new_arr += first_half + second_half
  new_arr
end