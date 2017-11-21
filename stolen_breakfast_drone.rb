def find_stolen_drone(drone_ids)
  drone_ids.sort!
  previous_id = drone_ids[0]

  1.upto(drone_ids.length - 1) do |i|
    if drone_ids[i] != previous_id
      return drone_ids[i]
    else
      previous_id = drone_ids[i + 1]
    end
  end

  raise.error("All drones returned")
end
