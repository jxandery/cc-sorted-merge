class Merge
  attr_reader :sorted_array

  def initialize
    @sorted_array = []
  end

  def merge_assorted_arrays(array1, array2)
    if both_empty?(array1, array2)
      sorted_array
    elsif array1.empty?
      array2.each do |num|
        sorted_array << num
      end
    elsif array2.empty?
      array1.each do |num|
        sorted_array << num
      end
    elsif array1[0] > array2[0]
      sorted_array << array2[0]
      array2.unshift
    elsif array1[0] < array2[0]
      sorted_array << array1[0]
      array1.unshift
    end
    sorted_array
  end

  def both_empty?(array1, array2)
    array1.empty? && array2.empty?
  end
end
