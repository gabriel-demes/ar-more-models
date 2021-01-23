class Plant < ActiveRecord::Base
    has_many :plant_parenthoods
    has_many :people, through: :plant_parenthoods
    has_many :plant_categories
    has_many :categories, through: :plant_categories
    has_many :waterings
    has_many :people, through: :waterings


    def number_of_days_since_the_last_watering
        time = DateTime.now
        last_watered = self.waterings.last.created_at.to_datetime
        num_days = (time - last_watered).to_i
        return puts "I was watered #{num_days} ago" if num_days > 0
        puts "I was watered today"
    end
end
