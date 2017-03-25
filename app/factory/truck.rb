class Truck < BaseVehicleType


	def get_final_costs vehicle, options = {}
		
		return unless options

		option = Option.find(options[:id])
		vehicle.cost + option.cost
	end

	def validate options
		return "Not eligible for car wash." if options[:id].eql? "2"
	end
end