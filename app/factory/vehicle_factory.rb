class VehicleFactory

	def get_vehicle_type vehicle_type
		case vehicle_type.name
			when 'Car'
				Car.new
			when 'Truc'
				Truck.new
		end
	end

end