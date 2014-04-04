class Person < ActiveRecord::Base

def name
	name = self.first_name + " " + self.last_name
	return name
end

def birthday
	birthday = self.birthdate.to_s 
	return birthday
end

end