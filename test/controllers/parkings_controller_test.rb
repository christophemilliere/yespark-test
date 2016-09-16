require 'test_helper'

class ParkingsControllerTest < ActionController::TestCase
  setup do
    @parking = parkings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parkings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parking" do
    assert_difference('Parking.count') do
      post :create, parking: { address: @parking.address, available: @parking.available, city: @parking.city, district: @parking.district, has_camera: @parking.has_camera, has_watchman: @parking.has_watchman, lat: @parking.lat, lng: @parking.lng, main_picture: @parking.main_picture, name: @parking.name, price_month: @parking.price_month, slug: @parking.slug, user_id: @parking.user_id, zip_code: @parking.zip_code }
    end

    assert_redirected_to parking_path(assigns(:parking))
  end

  test "should show parking" do
    get :show, id: @parking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parking
    assert_response :success
  end

  test "should update parking" do
    patch :update, id: @parking, parking: { address: @parking.address, available: @parking.available, city: @parking.city, district: @parking.district, has_camera: @parking.has_camera, has_watchman: @parking.has_watchman, lat: @parking.lat, lng: @parking.lng, main_picture: @parking.main_picture, name: @parking.name, price_month: @parking.price_month, slug: @parking.slug, user_id: @parking.user_id, zip_code: @parking.zip_code }
    assert_redirected_to parking_path(assigns(:parking))
  end

  test "should destroy parking" do
    assert_difference('Parking.count', -1) do
      delete :destroy, id: @parking
    end

    assert_redirected_to parkings_path
  end
end
