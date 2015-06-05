class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :username, :hood, :city
  has_many :pictures
end
