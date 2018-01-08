require_relative './drone.rb'

map = initialize_map(5, 5)
drone_1 = Drone.new(1, 0, 0, 'n') 

opt = 0
while opt != 5

  map[drone_1.y][drone_1.x] = drone_1.id

  for sub_map in 0...map.size
    print map[sub_map]
    puts ''
  end
  
  puts '========================'

  opt = gets.chomp.to_i

  if opt == 1
    drone_1.move
  end

  if opt == 2
    drone_1.left
  end

  if opt == 3
    drone_1.right
  end
end
