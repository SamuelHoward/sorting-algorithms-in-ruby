require_relative 'ArrayDisplay'

class Array

  def selectionSort
    
    for i in 0...self.length

      min = self[i]
      k = i

      # Find the minimum value
      for j in (i + 1)...self.length
        
        if self[j] < min
          min = self[j]
          k = j
        end
        
      end

      # Shift unsorted subarray values to the right
      # (except min and values to the right of min) 
      for l in (k - 1).downto(i)
        self[l + 1] = self[l]  
      end

      # Place min into sorted array
      self[i] = min
      
    end
    
  end

  def selectionSortVisual
    for i in 0...self.length
      
      # Display code here
      self.display
      
      min = self[i]
      k = i
      # Find the minimum value
      for j in (i + 1)...self.length
        if self[j] < min
          min = self[j]
          k = j
        end
      end
      # Shift unsorted subarray values to the right
      # (except min and values to the right of min) 
      for l in (k - 1).downto(i)
        self[l + 1] = self[l]  
      end
      # Place min into sorted array
      self[i] = min

      # Display code
      self.display
      
    end
    
  end
  
end

#a = [0, 7, 2, 3, -1000, 5, 6, 7, 8, 9, 10, 7, 12, 13, 8000, 4, 5, 6, 4, 5, 6]
#b = []
#c = [1]
#d = [2, 1]
#e = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, -1, -2, -3, -4, -5, -6, -7, -8, -9, -10]
#f = [1, 1, 1, 1, 1, 1, 1, 1, 1]
#g = [1, 1, 1, 2, 1, 1, 1, 1, 1]
#h = [-4, 6, -8, 20, -30, 6, 20, 0, 0, 30, 30, -6, -4, -4, 8, 8, 8]

#A = [a, b, c, d, e, f, g, h]


#A.each { |i|
#  print i
#  puts
#  i.selectionSort
#  print i
#  puts
#}


#z = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20].shuffle
#z.selectionSortVisual
#z.display
