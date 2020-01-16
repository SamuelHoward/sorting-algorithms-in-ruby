require_relative 'ArrayDisplay'

class Array

  def insertionSort

    for i in 0...self.length

      tmp = self[i]

      j = i
      
      while j > 0

        # Place first entry of unsorted subarray into
        # correct postion of sorted subarray
        if self[j - 1] > tmp

          # Shift entries over
          self[j] = self[j - 1]

          # Palce entry at beginning if reached
          if j == 1
            self[0] = tmp
          end
        else
          self[j] = tmp
          break
        end

        j = j - 1
        
      end
      
    end
    
  end

  
  def insertionSortVisual

    for i in 0...self.length

      tmp = self[i]

      j = i
      
      while j > 0

        # Place first entry of unsorted subarray into
        # correct postion of sorted subarray
        if self[j - 1] > tmp

          # Shift entries over
          self[j] = self[j - 1]

          # Place entry at beginning if reached
          if j == 1
            self[0] = tmp
          end
        else
          self[j] = tmp
          self.display
          break
        end

        j = j - 1

        self.display
        
      end
      
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
#  i.insertionSort
#  print i
#  puts
#}

#z = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20].shuffle
#z.insertionSortVisual

