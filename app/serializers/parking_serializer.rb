class ParkingSerializer < ActiveModel::Serializer
  attributes :id, :lat, :lng, :name, :address, :available, :slug, :updated_at, :has_camera, :has_watchman, :zip_code, :district, :city, :main_picture, :price_month
end
