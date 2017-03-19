class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name, :favorite_city
end
