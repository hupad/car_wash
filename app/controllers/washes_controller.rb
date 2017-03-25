class WashesController < ApplicationController

	def index
		@washes = Wash.order("created_at DESC")
	end

	def create
		
		@vehicle_type = VehicleType.find(wash_params[:vehicle_type])
		vehicle = VehicleFactory.new.get_vehicle_type @vehicle_type

		options = {car_number: wash_params[:car_number], id: params[:option_id]}

		flash[:error] = vehicle.validate options
		unless flash[:error].nil?
			redirect_to new_washes_path
			return
		end
		
		final_cost = vehicle.get_final_costs @vehicle_type, params[:option_id]

		@wash = Wash.create(
			vehicle_type: @vehicle_type, 
			car_number: wash_params[:car_number],
			amount: final_cost
		)

		redirect_to root_path
	end

	def new
		@wash = Wash.new
	end

	private
	def wash_params
		params.require(:wash).permit(:vehicle_type, :car_number)
	end

end