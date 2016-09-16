# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

datas = [
  {
    "name":"Porte de Saint-Cloud",
    "address":"139 rue Michel-Ange",
    "available":false,
    "has_camera":false,
    "has_watchman":true,
    "zip_code":"75016",
    "city":"Paris",
    "main_picture":"https://yespark.imgix.net/Parking-porte-saint-cloud-327.JPG?ixlib=rails-2.1.0\u0026auto=enhance\u0026fit=crop\u0026w=450\u0026h=300",
    "price_month":15900
  },
  {
    "name":"Olivier Métra",
    "address":"15 rue Olivier Métra",
    "available":false,
    "has_camera":false,
    "has_watchman":true,
    "zip_code":"75020",
    "city":"Paris",
    "main_picture":"https://yespark.imgix.net/Parking-olivier-metra-1901.JPG?ixlib=rails-2.1.0\u0026auto=enhance\u0026fit=crop\u0026w=450\u0026h=300",
    "price_month":7200
  },
  {
    "name":"Volontaires - Dutot - Paris",
    "address":"51 rue Dutot",
    "available":true,
    "has_camera":false,
    "has_watchman":false,
    "zip_code":"75015",
    "city":"Paris",
    "main_picture":"https://yespark.imgix.net/Parking-volontaires-dutot-paris-2106.jpg?ixlib=rails-2.1.0\u0026auto=enhance\u0026fit=crop\u0026w=450\u0026h=300",
    "price_month":10100
  },
  {
    "name":"Aéroport du Bourget - Blanc-Mesnil",
    "address":"158 avenue du 8 mai 1945",
    "available":true,
    "has_camera":true,
    "has_watchman":true,
    "zip_code":"93150",
    "city":"Le Blanc-Mesnil",
    "main_picture":"https://yespark.imgix.net/Parking-aeroport-bourget-blanc-mesnil-865.jpg?ixlib=rails-2.1.0\u0026auto=enhance\u0026fit=crop\u0026w=450\u0026h=300",
    "price_month":5000
  },
  {
    "name":"Mairie de Saint-Ouen ",
    "address":"14 rue Amilcar Cipriani",
    "available":true,
    "has_camera":true,
    "has_watchman":true,
    "zip_code":"93400",
    "city":"Saint-Ouen",
    "main_picture":"https://yespark.imgix.net/Parking-mairie-saint-ouen-899.JPG?ixlib=rails-2.1.0\u0026auto=enhance\u0026fit=crop\u0026w=450\u0026h=300",
    "price_month":5900
  },
  {
    "name":"Moulin Vert",
    "address":"12 rue Pauline Lacroix",
    "available":true,
    "has_camera":false,
    "has_watchman":true,
    "zip_code":"94400",
    "city":"Vitry-sur-Seine",
    "main_picture":"https://yespark.imgix.net/Parking-moulin-vert-1426.JPG?ixlib=rails-2.1.0\u0026auto=enhance\u0026fit=crop\u0026w=450\u0026h=300",
    "price_month":4700
  },
  {
    "name":"Mairie de Courbevoie",
    "address":"3 rue Carle Hébert",
    "available":true,
    "has_camera":false,
    "has_watchman":true,
    "zip_code":"92400",
    "city":"Courbevoie",
    "main_picture":"https://yespark.imgix.net/Parking-mairie-courbevoie-1189.png?ixlib=rails-2.1.0\u0026auto=enhance\u0026fit=crop\u0026w=450\u0026h=300",
    "price_month":7500
  }
]

user = User.create!(email: 'christophe@free.fr', password: '12345678', password_confirmation: '12345678')
datas.each do |p|
  parking = Parking.new(name: p[:name],
                         address: p[:address],
                         available: p[:available],
                         has_camera: p[:has_camera],
                         has_watchman: p[:has_watchman],
                         zip_code: p[:zip_code],
                         city: p[:city],
                         main_picture: p[:main_picture],
                         price_month: p[:price_month],
                         user: user)

  parking.save!
end
