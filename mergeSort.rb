require_relative 'ArrayDisplay'

class Array

  
  def mergeSort(l, r)

    # Avoid singleton and empty casses
    if l != r and r > 0

      # Recursively sort the left and right halves, then merge them
      self.mergeSort(l, l + (r-l).div(2))
      self.mergeSort(l + (r-l).div(2) + 1, r)
      self.merge(l, l + (r-l).div(2), r)
    end
    
  end

  # Merge two sorted subarrays into one sorted array
  def merge(l, m, r)

    lArr = Array.new
    rArr = Array.new

    # Create copy of left subarray
    for i in 0..(m - l)
      lArr.push(self[l + i])
    end

    # Create copy of right subarray
    for i in 0...(r - m)
      rArr.push(self[m + 1 + i])
    end
    
    for i in l..r

      # Place smaller of two subarrays first
      if not lArr.empty? and not rArr.empty?
        if lArr[0] <= rArr[0]
          self[i] = lArr.shift
        else
          self[i] = rArr.shift
        end
        # If one subarray is empty, copy the rest of the other subarray
        #into this array
      elsif lArr.empty?
        self[i] = rArr.shift
      else
        self[i] = lArr.shift
      end 
      
    end

  end

  def mergeSortVisual(l, r)

    # Avoid singleton and empty casses
    if l != r and r > 0

      # Recursively sort the left and right halves, then merge them
      self.display
      self.mergeSortVisual(l, l + (r-l).div(2))
      self.display
      self.mergeSortVisual(l + (r-l).div(2) + 1, r)
      self.display
      self.mergeVisual(l, l + (r-l).div(2), r)
      self.display
    end
    
  end

  # Merge two sorted subarrays into one sorted array
  def mergeVisual(l, m, r)

    lArr = Array.new
    rArr = Array.new

    # Create copy of left subarray
    for i in 0..(m - l)
      lArr.push(self[l + i])
    end

    # Create copy of right subarray
    for i in 0...(r - m)
      rArr.push(self[m + 1 + i])
    end
    
    for i in l..r

      # Place smaller of two subarrays first
      if not lArr.empty? and not rArr.empty?
        if lArr[0] <= rArr[0]
          self[i] = lArr.shift
        else
          self[i] = rArr.shift
        end
        # If one subarray is empty, copy the rest of the other subarray
        #into this array
      elsif lArr.empty?
        self[i] = rArr.shift
      else
        self[i] = lArr.shift
      end

      self.display
      
    end

  end
  
end

a = [0, 7, 2, 3, -1000, 5, 6, 7, 8, 9, 10, 7, 12, 13, 8000, 4, 5, 6, 4, 5, 6]
b = []
c = [1]
d = [2, 1]
e = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, -1, -2, -3, -4, -5, -6, -7, -8, -9, -10]
f = [1, 1, 1, 1, 1, 1, 1, 1, 1]
g = [1, 1, 1, 2, 1, 1, 1, 1, 1]
h = [-4, 6, -8, 20, -30, 6, 20, 0, 0, 30, 30, -6, -4, -4, 8, 8, 8]

aa = [0, 2, 4, 8, 1, 3, 5, 7]
bb = [1, 1, 1, 2, 3, 4]
cc = [1, 100, 200, 300, -5, 1, 10, 10, 20]

A = [a, b, c, d, e, f, g, h]
B = [aa, bb, cc]


#A.each { |i|
#  print i
#  puts
#  i.mergeSort(0, i.length - 1)
#  #i.merge(0, i.length.div(2) - 1, i.length - 1)
#  print i
#  puts
#}
z = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15].shuffle
z.mergeSortVisual(0, z.length - 1)
