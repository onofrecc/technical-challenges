def zero_fuel(distance, mpg, fuel_left)
  # your code here
  fuel_left >= distance / mpg ? true : false
  end

 puts zero_fuel(50, 25, 2)
 puts zero_fuel(38,21, 1)
