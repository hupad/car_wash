class WashesController < ApplicationController

	def index
		@washes = Wash.order("created_at").to_a
	end

	def create
		flash[:error] = Rules.new.is_stolen_vehicle wash_params[:car_number]
		unless flash[:error].nil?
			redirect_to new_washes_path
			return
		end

		@vehicle_type = VehicleType.find(wash_params[:vehicle_type])
		final_cost = VehicleFactory.new.calculate_final_cost @vehicle_type, {:id => params[:option_id] }

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