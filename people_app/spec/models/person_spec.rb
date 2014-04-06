require 'spec_helper'

describe Person do

  subject(:ilana){Person.new({
    first_name: 'Ilana',
    last_name: 'Seid',
    license: true,
    drinks: 2,
    image_url: 'http://placekitten.com/100/100',
    birthdate: '1985-07-26'
  })}

  junior =

  describe '#name' do
    it "display's the person's full name" do
      expect(ilana.name).to eq("Ilana Seid")
    end
  end

  describe '#birthday' do
    it "display's the person's birthday" do
      expect(ilana.birthday).to eq("1985-07-26")
    end
  end

  describe '#have_a_drink' do
    it "should increase the number stored in the drinks attribute if they are over 21" do
      ilana.have_a_drink
     expect(ilana.drinks).to eq(3) 
    end
    it 'if they are under 21 then the string "Wait a few years" is returned' do
      junior = Person.new(birthdate: '2013-01-01')
      expect(junior.have_a_drink).to eq("Wait a few years")
    end
    it 'should return "Go home <object name> youre drunk", if someone is over 21 and has three drinks' do
      alison = Person.new(first_name: "Alison", birthdate: '1977-01-01', drinks: 3)
      expect(alison.have_a_drink).to eq("Go home Alison, you are drunk")
    end
  end

  describe '#drive_a_car' do
    it 'if they are under 18 then a string "Not yet youngin" is returned' do
      junior = Person.new(birthdate: '2013-01-01')
      expect(junior.drive_a_car).to eq("Not yet youngin")
    end
  end

end


# #drive_a_car`
#   * 
#   * if they are 18 and they have a license then they can drive 
#   * if they are over 18 and have a license then they can drive
#   * if they are over 21, have a license, and are drunk then the string "Looks like a cab for you tonight" is returned 
