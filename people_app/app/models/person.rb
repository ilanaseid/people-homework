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
	age = (Date.today.year - self.birthdate.year) + ((Date.today.month - self.birthdate.month)/12) + ((Date.today.day - self.birthdate.day)/30)
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
	age = (Date.today.year - self.birthdate.year) + ((Date.today.month - self.birthdate.month)/12) + ((Date.today.day - self.birthdate.day)/30)

	if age < 18
		return "Not yet youngin"
	elsif age >= 18 && age < 21
		if self.license == true 
			return true
		else 
			return false
		end
	else age >= 21
		if self.drinks > 3
			return "Looks like a cab for you tonight"
		else
			return true
		end
	end
end

def sober_up

	if self.drinks == 0
		return self.drinks 
	else
		return self.drinks -=1
	end
end


end