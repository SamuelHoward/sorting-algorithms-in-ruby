# sorting-algorithms-in-ruby
A repository for writing sorting algorithms in ruby.

I am working on this to practice ruby as well as brush up on sorting algorithms.

Currently the algorithms included are:
- Selection Sort
- Bubble Sort
- Insertion Sort
- Merge Sort
- Quick Sort
- Pancake Sort
- Gnome Sort

# Can I do anything with this?

Yes! If you clone this repository you can run:

ruby sortWith.rb [sortingAlgorithm] [numbersToSort]

to see your chosen algorithm sort the given list of numbers. An example of this usage
is below:

ruby sortWith.rb mergeSort 1 6 4 7 9 17

At the moment this only works with integers greater than 0 and below a certain threshold
dependent on how wide your terminal view is.
