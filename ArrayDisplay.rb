class Array

  
  #Simple method for displaying arrays with limited ranges (0 - 30ish)
  def display

    for i in 0...self.length
      
      self[i].times {print "#"}
      puts
      
    end

    puts
    
    sleep(0.25)

  end
  
end

