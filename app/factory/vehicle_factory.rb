class VehicleFactory

	def calculate_final_cost vehicle_type, options={}
		case vehicle_type.name
			when 'Car'
				Car.new.get_final_costs vehicle_type, options
			when 'Truc'
				Truck.new.get_final_costs vehicle_type, options
		end
	end

end