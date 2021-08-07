class CarsController < ApplicationController
  def homepage
    render json: Car.all
  end

  def homepagePost
    newCar = Car.new(name: params["name"], license_plate: params["license_plate"])
    newCar.save
    render json: newCar
  end
end
