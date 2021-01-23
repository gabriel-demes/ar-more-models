class Watering < ActiveRecord::Base

    belongs_to :plant
    belongs_to :person
end