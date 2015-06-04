class User < ActiveRecord::Base
  has_many :pictures
  has_many :buildings, through: :pictures
end
