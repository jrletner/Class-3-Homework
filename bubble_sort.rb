#The array to be bubble sorted
num_arr = [11, 13, 20, 2, 10, 14, 9, 3, 25, 30, 42, 18, 1, 6, 5, 16, 17, 8, 0, 7, 2]
puts "Your beginning array before bubble sort is: #{num_arr}"

#Setup the variables
i = 0
pass = 0

unsorted = true

while unsorted == true
  #Keep track of the number of passes, not to exceed the length of the array
  #i here represents the number of times the array[0] has been cycled through the array,
  #when it equals the length of the array (we add 1 to it because the first slot in the array is 0), move on and incrmenet the pass
  if i + 1 == num_arr.length
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
    #after the next run unsorted will no longer equal true, stopping the loop
    unsorted = false
    puts "Your ending array after bubble sort is: #{num_arr}"
  end
end
