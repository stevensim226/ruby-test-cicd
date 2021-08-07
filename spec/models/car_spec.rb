require 'rails_helper'

CAR_NAME = "Test Car"
CAR_LICENSE = "A1234BC"

RSpec.describe Car, type: :model do

  context 'Test getters' do
    before(:each) do
      @c1 = Car.new(name: "Car One", license_plate: "TEST123")
    end

    it 'ensure name getter' do
      expect(@c1.name).to eq("Car Onee")
    end

    it 'ensure license getter' do
      expect(@c1.license_plate).to eq("TEST123")
    end
  end
  
  context 'Test functions' do
    
    it 'ensures that car saves correctly' do
      car = Car.new(name: CAR_NAME, license_plate: CAR_LICENSE)
      expect(car.save).to eq(true)
    end

    it 'ensures that car wont save w/o proper data' do
      car = Car.new(name: CAR_NAME)
      expect(car.save).to eq(false)

    end

    it 'ensures that car definition is correct' do
      car = Car.new(name: CAR_NAME, license_plate: CAR_LICENSE)
      expect(car.get_definition).to eq(CAR_NAME + " " + CAR_LICENSE)
    end

  end

end
