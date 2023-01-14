num_arr = [11, 13, 20, 2, 10, 14, 9, 3, 25, 30, 42, 18, 1, 6, 5, 16, 17, 8, 0, 7, 2]
puts "Your beginning array before bubble sort is: #{num_arr}"

# Check the first index of array to see if it's in the correct spot
i = 0
pass = 0

swap_num = 1

while swap_num == 1
  #Keep track of the number of passes, not to exceed the length of the array
  #i here represents the number of times the array[0] has been cycled through the array,
  #when it equals the length of the array, move on and incrmenet the pass
  if i + 1 == num_arr.length - pass
    pass += 1
    #Now that we are on a new pass, reset i to 0
    i = 0
  end
  if num_arr[i] > num_arr[i + 1]
    #Swap the position if the current number is greater than the next number
    num_arr[i], num_arr[i + 1] = num_arr[i + 1], num_arr[i]
  end
  #Increment i so that it will compare the current number to the next number
  i += 1
  #Check to see if the next pass will be our last, if so, set the flag to stop the loop after the next run,
  #then output the bubble sort array
  if pass + 1 == num_arr.length
    swap_num = 2
    puts "Your ending array after bubble sort is: #{num_arr}"
  end
end
