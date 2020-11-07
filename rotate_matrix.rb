# Given an image represented by an NaN matrix, where each
# pixel in the image is 4 bytes, write a method to rotate
# the image by 90 degrees.
# Can you do this in place?

def rotate_matrix(arr)
    flipped_array = [] # initialize empty array
end

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