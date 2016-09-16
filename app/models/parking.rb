# == Schema Information
#
# Table name: parkings
#
#  id           :integer          not null, primary key
#  lat          :float
#  lng          :float
#  name         :string
#  address      :string
#  available    :boolean
#  slug         :string
#  has_camera   :boolean
#  has_watchman :boolean
#  zip_code     :string
#  district     :string
#  city         :string
#  main_picture :string
#  price_month  :decimal(, )
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Parking < ActiveRecord::Base
  belongs_to :user

  validates_uniqueness_of :name, :slug
  validates_presence_of :name, :address, :zip_code, :city

  before_validation :set_slug

  before_create :set_district, :set_longitude_latitude
  before_update :set_district, :set_longitude_latitude

  def full_address
    "#{ address}, #{city} #{zip_code}"
  end

  def get_has_camera
    return 'Non' unless has_camera
    'oui'
  end

  def get_has_watchman
    return 'Non' unless has_watchman
    'oui'
  end

  def get_available
    return 'Non' unless available
    'oui'
  end

  private

  def set_slug
    self.slug = name.parameterize
  end

  def set_district
    self.district = (city == 'Paris')? zip_code[-2,2] : "0"
  end

  def set_longitude_latitude
    a = Geokit::Geocoders::GoogleGeocoder.geocode full_address
    self.lat = a.lat
    self.lng = a.lng
  end
end
