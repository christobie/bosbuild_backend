class Building < ActiveRecord::Base
  has_many :pictures
  has_many :users, through: :pictures
end
