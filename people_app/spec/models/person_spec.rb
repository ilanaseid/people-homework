require 'spec_helper'

describe Person do

  subject(:ilana){Person.new({
    first_name: 'Ilana',
    last_name: 'Seid',
    license: true,
    drinks: 2,
    image_url: 'http://placekitten.com/100/100',
    birthdate: '07/26/1985'
  })}

  describe '#name' do
    it "display's the person's full name" do
      expect(ilana.name).to eq("Ilana Seid")
    end
  end
end



