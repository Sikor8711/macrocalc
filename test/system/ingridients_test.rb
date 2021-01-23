require "application_system_test_case"

class IngridientsTest < ApplicationSystemTestCase
  setup do
    @ingridient = ingridients(:one)
  end

  test "visiting the index" do
    visit ingridients_url
    assert_selector "h1", text: "Ingridients"
  end

  test "creating a Ingridient" do
    visit ingridients_url
    click_on "New Ingridient"

    fill_in "Cals", with: @ingridient.cals
    fill_in "Carbs", with: @ingridient.carbs
    fill_in "Dish", with: @ingridient.dish_id
    fill_in "Fats", with: @ingridient.fats
    fill_in "Name", with: @ingridient.name
    fill_in "Proteins", with: @ingridient.proteins
    fill_in "Volume", with: @ingridient.volume
    click_on "Create Ingridient"

    assert_text "Ingridient was successfully created"
    click_on "Back"
  end

  test "updating a Ingridient" do
    visit ingridients_url
    click_on "Edit", match: :first

    fill_in "Cals", with: @ingridient.cals
    fill_in "Carbs", with: @ingridient.carbs
    fill_in "Dish", with: @ingridient.dish_id
    fill_in "Fats", with: @ingridient.fats
    fill_in "Name", with: @ingridient.name
    fill_in "Proteins", with: @ingridient.proteins
    fill_in "Volume", with: @ingridient.volume
    click_on "Update Ingridient"

    assert_text "Ingridient was successfully updated"
    click_on "Back"
  end

  test "destroying a Ingridient" do
    visit ingridients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ingridient was successfully destroyed"
  end
end
