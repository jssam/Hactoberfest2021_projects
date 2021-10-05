"""
You are given an array of positive numbers from 1 to n, 
such that all numbers from 1 to n are present except one number x.
You have to find x.
The input array is not sorted.
Look at the below array and give it a try before checking the solution.

[3, 7, 1, 2, 8, 4, 5]

in above 6 is missing
"""

# My method
def find_missing(input):
	for i in range(1, max(input)):
		if i in input:
			pass
		else:
			return i


demo_list = [3, 7, 1, 2, 8, 4, 5]
print(find_missing(demo_list))

#Amazon method
def find_missing_updated(input):
	# calculate sum of all elements 
  	# in input list
  	sum_of_elements = sum(input)
  
  	# There is exactly 1 number missing 
  	n = len(input) + 1
  	actual_sum = (n * ( n + 1 ) ) / 2
  	return actual_sum - sum_of_elements
