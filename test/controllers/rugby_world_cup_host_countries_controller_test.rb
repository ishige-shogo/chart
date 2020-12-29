require 'test_helper'

class RugbyWorldCupHostCountriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rugby_world_cup_host_country = rugby_world_cup_host_countries(:one)
  end

  test "should get index" do
    get rugby_world_cup_host_countries_url
    assert_response :success
  end

  test "should get new" do
    get new_rugby_world_cup_host_country_url
    assert_response :success
  end

  test "should create rugby_world_cup_host_country" do
    assert_difference('RugbyWorldCupHostCountry.count') do
      post rugby_world_cup_host_countries_url, params: { rugby_world_cup_host_country: { held_at: @rugby_world_cup_host_country.held_at, matches: @rugby_world_cup_host_country.matches, name: @rugby_world_cup_host_country.name, stadium_capacity: @rugby_world_cup_host_country.stadium_capacity, total_attendance: @rugby_world_cup_host_country.total_attendance } }
    end

    assert_redirected_to rugby_world_cup_host_country_url(RugbyWorldCupHostCountry.last)
  end

  test "should show rugby_world_cup_host_country" do
    get rugby_world_cup_host_country_url(@rugby_world_cup_host_country)
    assert_response :success
  end

  test "should get edit" do
    get edit_rugby_world_cup_host_country_url(@rugby_world_cup_host_country)
    assert_response :success
  end

  test "should update rugby_world_cup_host_country" do
    patch rugby_world_cup_host_country_url(@rugby_world_cup_host_country), params: { rugby_world_cup_host_country: { held_at: @rugby_world_cup_host_country.held_at, matches: @rugby_world_cup_host_country.matches, name: @rugby_world_cup_host_country.name, stadium_capacity: @rugby_world_cup_host_country.stadium_capacity, total_attendance: @rugby_world_cup_host_country.total_attendance } }
    assert_redirected_to rugby_world_cup_host_country_url(@rugby_world_cup_host_country)
  end

  test "should destroy rugby_world_cup_host_country" do
    assert_difference('RugbyWorldCupHostCountry.count', -1) do
      delete rugby_world_cup_host_country_url(@rugby_world_cup_host_country)
    end

    assert_redirected_to rugby_world_cup_host_countries_url
  end
end
