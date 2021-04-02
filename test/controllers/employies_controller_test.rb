require "test_helper"

class EmployiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employie = employies(:one)
  end

  test "should get index" do
    get employies_url
    assert_response :success
  end

  test "should get new" do
    get new_employie_url
    assert_response :success
  end

  test "should create employie" do
    assert_difference('Employie.count') do
      post employies_url, params: { employie: { address: @employie.address, address1: @employie.address1, city: @employie.city, date_of_birth: @employie.date_of_birth, email: @employie.email, name: @employie.name, phone_num: @employie.phone_num, pincode: @employie.pincode } }
    end

    assert_redirected_to employie_url(Employie.last)
  end

  test "should show employie" do
    get employie_url(@employie)
    assert_response :success
  end

  test "should get edit" do
    get edit_employie_url(@employie)
    assert_response :success
  end

  test "should update employie" do
    patch employie_url(@employie), params: { employie: { address: @employie.address, address1: @employie.address1, city: @employie.city, date_of_birth: @employie.date_of_birth, email: @employie.email, name: @employie.name, phone_num: @employie.phone_num, pincode: @employie.pincode } }
    assert_redirected_to employie_url(@employie)
  end

  test "should destroy employie" do
    assert_difference('Employie.count', -1) do
      delete employie_url(@employie)
    end

    assert_redirected_to employies_url
  end
end
