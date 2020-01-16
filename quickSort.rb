require_relative 'ArrayDisplay'

class Array

  
  def quickSort(l, r)

    # Avoid edge cases
    if l < r and r > 0

      # Partition the array using first element as pivot, recursively sort
      pt = self.partition(l, r)
      self.quickSort(l, pt)
      self.quickSort(pt + 1, r)
      
    end
        
  end

  # Partition this array using first element as pivot
  def partition(l, r)

    i = 1
    pivot = self[l]
    
    while (l + i) <= r

      tmp = self[l + i]

      # Shift smaller entries to left of pivot, shift greater entries with pivot
      if pivot > tmp
        
        for j in (l + i).downto(l + 1)
          self[j] = self[j - 1]
        end

        self[l] = tmp
        l = l + 1
        
      else

        i = i + 1
        
      end
      
    end

    # Return final position of pivot
    return l
    
  end

  def quickSortVisual(l, r)

    self.display
    
    # Avoid edge cases
    if l < r and r > 0

      # Partition the array using first element as pivot, recursively sort
      pt = self.partitionVisual(l, r)
      self.display
      self.quickSortVisual(l, pt)
      self.display
      self.quickSortVisual(pt + 1, r)
      
    end
        
  end

  # Partition this array using first element as pivot
  def partitionVisual(l, r)

    i = 1
    pivot = self[l]
    
    while (l + i) <= r

      tmp = self[l + i]

      # Shift smaller entries to left of pivot, shift greater entries with pivot
      if pivot > tmp
        
        for j in (l + i).downto(l + 1)
          self[j] = self[j - 1]
        end

        self[l] = tmp
        l = l + 1

        self.display
        
      else

        i = i + 1
        
      end
      
    end

    self.display

    # Return final position of pivot
    return l
    
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
#  i.quickSort(0, i.length - 1)
#  #i.partition(0, i.length - 1)
#  print i
#  puts
#}

z = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20].shuffle
z.quickSortVisual(0, z.length - 1)
