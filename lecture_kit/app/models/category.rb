class Category < ActiveRecord::Base
    has_many :plant_catregories
    has_many :plants, through: :plant_categories
end
