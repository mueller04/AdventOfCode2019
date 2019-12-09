data = File.read("./data.txt")

total = data.split("\n").map(&:to_i).reduce(0) do |sum, num| 
    sum += num/3 - 2
end

puts total