class Person < ActiveRecord::Base

    has_many :plant_parenthoods
    has_many :plants, through: :plant_parenthoods
    has_many :waterings
    has_many :plants, through: :waterings

    def water_plant(plant)
        Watering.new(person_id: self.id, plant_id: plant.id)

        p = plant_parenthoods.find_by(plant: plant)
        if p
            affection = p.affection || 1
            affection += 1
            p.update(affection: affection)
        end
    end
end