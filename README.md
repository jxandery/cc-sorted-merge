Sorted Merging
Context

If you ever have the good fortune to write a merge sort, you will find that it boils down to two tasks:

Split an array into two halves, and sort the halves.
Merge the sorted halves together.
We've done the first one for you:

def merge_sort(array)
  return array if array.length < 2
  mid   = array.length / 2
  left  = merge_sort(array[0, mid])
  right = merge_sort(array[mid, array.length-mid])
  merge_sorted_arrays left, right
end
After returning from merge_sort, the two havles are sorted (recursion :) This means that when they come into merge_sorted_arrays, both of the arrays are already sorted.

Problem

Your job is to do the second task, by defining merge_sorted_arrays:

def merge_sorted_arrays(array1, array2)
  # your code here :)
  # array1 and array2 are sorted, you need to put them together,
  # returning a new array, which is sorted and has the contents of both
end
