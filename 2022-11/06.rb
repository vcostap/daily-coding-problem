def get_all_contiguous(array)
    contiguos = []

    for i in 0...array.length do
        for j in 0...(array.length-i+1) do
            contiguos.append(array[i,j])
        end
    end

    contiguos
end

def sum_arrays(array, k)
    contiguous = get_all_contiguous(array)
    results = []

    contiguous.each do |array|
        if array.sum == k
            results.append(array)
        end
    end
    results
end


sum_arrays([1, 2, 3, 4, 5], 9).each do |option|
    puts option
    puts "----"
end

=begin 
i = 0 j = 0
1
i = 0 j = 1
1,2
i = 0 j = 2
1,2,3

i = 1 j = 1
2
i = 1 j = 2
2,3

i = 2 j = 2
3 
=end
