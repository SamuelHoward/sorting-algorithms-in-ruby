class Array

  
  def gnomeSort

    i = 1

    while i <= self.length - 1

      #print self
      #puts
      #puts i
      
      if i == 0 or self[i] >= self[i - 1]
        i = i + 1
        #puts self[i]
      else
        tmp = self[i]
        self[i] = self[i - 1]
        self[i - 1] = tmp
        i = i - 1
      end
      
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
  i.gnomeSort
  #i.flip(i.length - 4)
  print i
  puts
}
