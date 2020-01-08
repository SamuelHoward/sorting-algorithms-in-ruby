class Array

  def bubbleSort
    
    loop do

      switchFlag = 0
      
      for i in 0...(self.length - 1)

        if self[i] > self[i + 1]
          tmp = self[i]
          self[i] = self[i + 1]
          self[i + 1] = tmp
          switchFlag = 1
        end

      end

      break if switchFlag == 0
      
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

A = [a, b, c, d, e, f, g, h]

A.each { |i|
  print i
  puts
  i.bubbleSort
  print i
  puts
}
