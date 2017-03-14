=begin
def search_array(arr, num)
    arr.each_with_index do |n, i|
        if n == num
            return i
        end
    end
    nil
end

def fib(num)
    arr =[0,1]
    i=0
    while i+2<num
    arr.push(arr[i]+arr[i+1])
    i+=1
    end
    arr
end

p fib(100).last == 218922995834555169026


arr = [42, 89, 23, 1]
p search_array(arr, 6)

=end

#pseudocode
# create a function that takes an array of integers
# check if array is empty or only has one element, if so, return the array
# check if the array is sorted by using a boolean variable "swap"
# create an index variable to be able to iterate the values using a while loop
# as we iterate, check the value at index if it is greater than the value after that index
# If so, swap the two values
# set the boolean "swap" to true
# loop thru until "swap" remains false
# return the sorted array



def bubble_sort(arr)
    return arr if arr.empty? || arr.one?
    swap = true
    while swap
        swap = false
        i=0
        while i < arr.length-1
            if arr[i]>arr[i+1]
                arr[i],arr[i+1]=arr[i+1],arr[i]
                swap=true
            end
            i+=1
        end
    end
    arr
end


array=[76, 3, 87, 12, 4, 99, 22]
p bubble_sort(array)

