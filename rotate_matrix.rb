# Given an image represented by an NaN matrix, where each
# pixel in the image is 4 bytes, write a method to rotate
# the image by 90 degrees.
# Can you do this in place?

def rotate_matrix(arr)
    flipped_array = [] # initialize empty array
    transposed_arr = my_transpose(arr) # flip the rows with columns inside using a transpose method
    transposed_arr.each { |row| flipped_array << row.reverse } # once we reverse the new rows, it goes from 45 to 90 degrees rotation
    flipped_array
end

# Helper method should flip the matrix 45 degrees by switching rows and columns
# copy the top edge to an array and move the left to the top, the bottom to the left, etc....
def my_transpose(arr) 
    new_arr = []
    (0...arr.length).each do |outer_el| # the second dimension of a matrix
      outer_arr = []
      (0...arr.length).each do |inner_el|  
        outer_arr << arr[inner_el][outer_el] # flip everything inside the array and place in the outer_arr
      end
      new_arr << outer_arr # nest that outer_arr inside the new_arr
    end
    new_arr
end