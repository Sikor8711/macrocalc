require "test_helper"

class IngridientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingridient = ingridients(:one)
  end

  test "should get index" do
    get ingridients_url
    assert_response :success
  end

  test "should get new" do
    get new_ingridient_url
    assert_response :success
  end

  test "should create ingridient" do
    assert_difference('Ingridient.count') do
      post ingridients_url, params: { ingridient: { cals: @ingridient.cals, carbs: @ingridient.carbs, dish_id: @ingridient.dish_id, fats: @ingridient.fats, name: @ingridient.name, proteins: @ingridient.proteins, volume: @ingridient.volume } }
    end

    assert_redirected_to ingridient_url(Ingridient.last)
  end

  test "should show ingridient" do
    get ingridient_url(@ingridient)
    assert_response :success
  end

  test "should get edit" do
    get edit_ingridient_url(@ingridient)
    assert_response :success
  end

  test "should update ingridient" do
    patch ingridient_url(@ingridient), params: { ingridient: { cals: @ingridient.cals, carbs: @ingridient.carbs, dish_id: @ingridient.dish_id, fats: @ingridient.fats, name: @ingridient.name, proteins: @ingridient.proteins, volume: @ingridient.volume } }
    assert_redirected_to ingridient_url(@ingridient)
  end

  test "should destroy ingridient" do
    assert_difference('Ingridient.count', -1) do
      delete ingridient_url(@ingridient)
    end

    assert_redirected_to ingridients_url
  end
end
