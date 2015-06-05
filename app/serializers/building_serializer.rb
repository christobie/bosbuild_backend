class BuildingSerializer < ActiveModel::Serializer
  attributes :id, :name, :street_num, :street_name, :hood, :city, :zip
  has_many :pictures
end
