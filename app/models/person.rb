class Person < ApplicationRecord

	validates_presence_of :name, :favorite_city
end
