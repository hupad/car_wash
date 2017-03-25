class Truck < BaseVehicleType


	def get_final_costs vehicle, options = {}
		
		return unless options

		option = Option.find(options[:id])
		vehicle.cost + option.cost
	end
end