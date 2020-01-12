class Array

  
  def pancakeSort

    currTail = self.length - 1
    
    while currTail > 0

      # Repeatedly place largest entry at end
      max = self.max(currTail)
      self.flip(max)
      self.flip(currTail)
      currTail = currTail - 1
      
    end
        
  end

  # Flip the contents of this array from indices 0 to r
  def flip(r)

    i = 0
    j = r
    
    while i < j

      tmp = self[i]
      self[i] = self[j]
      self[j] = tmp
      i = i + 1
      j = j - 1
      
    end
           
  end

  # Find max element index in this array from 0 to r
  def max(r)

    if r < 0
      return -1
    else

      i = 1
      j = 0
      max = self[0]
      
      while i <= r

        if max < self[i]
          max = self[i]
          j = i
        end  

        i = i + 1
        
      end

      return j

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

A.each { |i|
  print i
  puts
  i.pancakeSort
  #i.flip(i.length - 4)
  print i
  puts
}
