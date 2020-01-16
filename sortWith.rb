require_relative "sortingHeader"

def feed_args

  if ARGV.size <= 1
    puts "Not enough arguments entered"
    return
  end

  arr = ARGV[1, ARGV.size - 1].map { |str| str.to_i }
  
  case ARGV[0]
  when "quickSort"
    arr.quickSortVisual(0, arr.size - 1)
  when "selectionSort"
    arr.selectionSortVisual
  when "pancakeSort"
    arr.pancakeSortVisual
  when "mergeSort"
    arr.mergeSortVisual(0, arr.size - 1)
  when "insertionSort"
    arr.insertionSortVisual
  when "gnomeSort"
    arr.gnomeSortVisual
  when "bubbleSort"
    arr.bubbleSortVisual
  else
    puts "Invalid Sorting Algorithm entered"
  end
  
end

feed_args
