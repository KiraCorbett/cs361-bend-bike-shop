!# /usr/bin/env ruby

require_relative 'bike'

bike = Bike.new(1, :pink, 99.99)
cargo = Cargo.new

cargo.add(:apples)
cargo.add(:water)
cargo.add(:repair_kit)

puts "Space for #{cargo.remaining_capacity} items left."

rental = Rental.new(bike)
