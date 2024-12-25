
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

def fibs_rec(n, arr)
  if n < 2
    arr << n
  else
    
end

p fibs_rec(3)
# def merge_sort(arr)

