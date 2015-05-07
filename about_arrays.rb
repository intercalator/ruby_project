require File.expand_path(File.dirname(__FILE__) + '/neo')


array = [1,2,3,4,5]
array2 = [1, "2", 3.0, ["a", "b"], "dog"]
array.inspect
array
puts array

puts array.inspect

puts array2.inspect

puts array2

array2.to_s
array2.join
array2.join(", ")
x = "1,2,3,4,5"
y = x.split(',')
y
y.reverse
array
array << 0
array.sort
array2.sort

array << 3
array.uniq
array
array.uniq!
array
array.delete_at(2)
array
array.delete(4)
array
array << 3
array.push(4)
array.pop
array
array.shift
array
array.unshift(1)
array
array + [9, 10, 11, 12]
array
new_array = array + [9,10]
new_array = array - [9,10]
new_array = array - [2]


class AboutArrays < Neo::Koan
  def test_creating_arrays
    empty_array = Array.new
    assert_equal __, empty_array.class
    assert_equal __, empty_array.size
  end

  def test_array_literals
    array = Array.new
    assert_equal [], array

    array[0] = 1
    assert_equal [1], array

    array[1] = 2
    assert_equal [1, __], array

    array << 333
    assert_equal __, array
  end

  def test_accessing_array_elements
    array = [:peanut, :butter, :and, :jelly]

    assert_equal __, array[0]
    assert_equal __, array.first
    assert_equal __, array[3]
    assert_equal __, array.last
    assert_equal __, array[-1]
    assert_equal __, array[-3]
  end

  def test_slicing_arrays
    array = [:peanut, :butter, :and, :jelly]

    assert_equal __, array[0,1]
    assert_equal __, array[0,2]
    assert_equal __, array[2,2]
    assert_equal __, array[2,20]
    assert_equal __, array[4,0]
    assert_equal __, array[4,100]
    assert_equal __, array[5,0]
  end

  def test_arrays_and_ranges
    assert_equal __, (1..5).class
    assert_not_equal [1,2,3,4,5], (1..5)
    assert_equal __, (1..5).to_a
    assert_equal __, (1...5).to_a
  end

  def test_slicing_with_ranges
    array = [:peanut, :butter, :and, :jelly]

    assert_equal __, array[0..2]
    assert_equal __, array[0...2]
    assert_equal __, array[2..-1]
  end

  def test_pushing_and_popping_arrays
    array = [1,2]
    array.push(:last)

    assert_equal __, array

    popped_value = array.pop
    assert_equal __, popped_value
    assert_equal __, array
  end

  def test_shifting_arrays
    array = [1,2]
    array.unshift(:first)

    assert_equal __, array

    shifted_value = array.shift
    assert_equal __, shifted_value
    assert_equal __, array
  end

end
