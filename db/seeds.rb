# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create!(email: 'christophe@free.fr', password: '12345678', password_confirmation: '12345678')

file = File.new '../parkings_input.json', 'r'
datas = JSON.load(file)

datas.each do |p|
  parking = Parking.new(name: p['name'],
                         address: p['address'],
                         available: p['available'],
                         has_camera: p['has_camera'],
                         has_watchman: p['has_watchman'],
                         zip_code: p['zip_code'],
                         city: p['city'],
                         main_picture: p['main_picture'],
                         price_month: p['price_month'],
                         user: user)

  parking.save!
end
