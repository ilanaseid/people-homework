class Person < ActiveRecord::Base

def name
	name = self.first_name + " " + self.last_name
	return name
end

def birthday
	birthday = self.birthdate.to_s 
	return birthday
end

def have_a_drink
	age = Date.today.year - self.birthdate.year
	@drinks = self.drinks
	
	if age < 21
		return "Wait a few years"
	elsif age >= 21 && @drinks <=2
		return  self.drinks += 1
	else 
		return "Go home #{self.first_name}, you are drunk"
	end
end

def drive_a_car
	age = Date.today.year - self.birthdate.year

	if age < 18
		return "Not yet youngin"
	end
end

end