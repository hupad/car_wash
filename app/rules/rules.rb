class Rules

  def before_create(record)

  	previous_customer = Wash.find_by(car_number: record.car_number)
  	if previous_customer
  		record.cost = record.cost * 0.5
  	end
  end

end