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
end



