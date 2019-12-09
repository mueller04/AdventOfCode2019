data = File.read("./data.txt")

def calculateFuelReqForFuel(fuel) 
    total = 0
    fuelForFuel = fuel/3 - 2

    while fuelForFuel > 0
        total += fuelForFuel
        fuelForFuel = fuelForFuel/3 -2
    end
    return total
end

total = data.split("\n").map(&:to_i).reduce(0) do |sum, num| 
    fuelReqForModule = num/3 - 2
    fuelReqForFuel = calculateFuelReqForFuel(fuelReqForModule)
    sum += fuelReqForModule + fuelReqForFuel
end

puts total