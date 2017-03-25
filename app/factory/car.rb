class Car < BaseVehicleType

	def get_final_costs vehicle, options = {}
		vehicle.cost
	end

	def validate options
		return "Stolen car." if options[:car_number].eql? "111111"
	end
end