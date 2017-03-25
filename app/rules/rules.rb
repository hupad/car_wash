class Rules

	def calculate_final_amount vehicle_type, options = {}
		
	end

	def is_stolen_vehicle car_number
		return "Stolen car." if car_number.eql? '1111111'
	end

  def before_create(record)

  	previous_customer = Wash.find_by(car_number: record.car_number)
  	if previous_customer
  		record.cost = record.cost * 0.5
  	end
  end

end