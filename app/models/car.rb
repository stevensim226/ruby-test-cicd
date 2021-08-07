class Car < ApplicationRecord
    validates :name, presence: true
    validates :license_plate, presence: true

    def get_definition
        self.name + " " + self.license_plate
    end

    def as_json(options=nil)
        {name: self.name, license_plate: self.license_plate}
    end

end
