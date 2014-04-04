class Person < ActiveRecord::Base

# attr_accessor :first_name, :last_name, :birthdate, :license, :drinks, :image_url


def name
name = self.first_name + " " + self.last_name
return name
end

end