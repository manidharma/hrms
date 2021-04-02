require "application_system_test_case"

class EmployiesTest < ApplicationSystemTestCase
  setup do
    @employie = employies(:one)
  end

  test "visiting the index" do
    visit employies_url
    assert_selector "h1", text: "Employies"
  end

  test "creating a Employie" do
    visit employies_url
    click_on "New Employie"

    fill_in "Address", with: @employie.address
    fill_in "Address1", with: @employie.address1
    fill_in "City", with: @employie.city
    fill_in "Date of birth", with: @employie.date_of_birth
    fill_in "Email", with: @employie.email
    fill_in "Name", with: @employie.name
    fill_in "Phone num", with: @employie.phone_num
    fill_in "Pincode", with: @employie.pincode
    click_on "Create Employie"

    assert_text "Employie was successfully created"
    click_on "Back"
  end

  test "updating a Employie" do
    visit employies_url
    click_on "Edit", match: :first

    fill_in "Address", with: @employie.address
    fill_in "Address1", with: @employie.address1
    fill_in "City", with: @employie.city
    fill_in "Date of birth", with: @employie.date_of_birth
    fill_in "Email", with: @employie.email
    fill_in "Name", with: @employie.name
    fill_in "Phone num", with: @employie.phone_num
    fill_in "Pincode", with: @employie.pincode
    click_on "Update Employie"

    assert_text "Employie was successfully updated"
    click_on "Back"
  end

  test "destroying a Employie" do
    visit employies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employie was successfully destroyed"
  end
end
