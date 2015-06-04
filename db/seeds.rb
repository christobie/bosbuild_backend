# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# @file = Rack::Test::UploadedFile.new(Rails.root + 'boston_slider.jpg', 'image/jpg')
# Picture.create!(image: @file)

User.create!('Chris Tobeck','ctobeck@gmail.com', 'christobie', 'Bay Village', 'Boston')
User.create!('Alice Tester','alice@email.com', 'alicewonderland', 'Fenway', 'Boston')
User.create!('Bob Tester','bob@email.com', 'BobbyBoston', 'South Boston', 'Boston')

Building.create!('Wilkes Passage', '1313', 'Washington Street', 'South End', 'Boston', '02118')
Building.create!('Laconia Lofts', '1200', 'Washington Street', 'South End', 'Boston', '02118')
Building.create!('Millennium Tower', '1', 'Franklin Street', 'Downtown', 'Boston', '02108')

