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

require 'test_helper'

class ParkingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
