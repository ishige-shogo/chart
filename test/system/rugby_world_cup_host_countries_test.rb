require "application_system_test_case"

class RugbyWorldCupHostCountriesTest < ApplicationSystemTestCase
  setup do
    @rugby_world_cup_host_country = rugby_world_cup_host_countries(:one)
  end

  test "visiting the index" do
    visit rugby_world_cup_host_countries_url
    assert_selector "h1", text: "Rugby World Cup Host Countries"
  end

  test "creating a Rugby world cup host country" do
    visit rugby_world_cup_host_countries_url
    click_on "New Rugby World Cup Host Country"

    fill_in "Held at", with: @rugby_world_cup_host_country.held_at
    fill_in "Matches", with: @rugby_world_cup_host_country.matches
    fill_in "Name", with: @rugby_world_cup_host_country.name
    fill_in "Stadium capacity", with: @rugby_world_cup_host_country.stadium_capacity
    fill_in "Total attendance", with: @rugby_world_cup_host_country.total_attendance
    click_on "Create Rugby world cup host country"

    assert_text "Rugby world cup host country was successfully created"
    click_on "Back"
  end

  test "updating a Rugby world cup host country" do
    visit rugby_world_cup_host_countries_url
    click_on "Edit", match: :first

    fill_in "Held at", with: @rugby_world_cup_host_country.held_at
    fill_in "Matches", with: @rugby_world_cup_host_country.matches
    fill_in "Name", with: @rugby_world_cup_host_country.name
    fill_in "Stadium capacity", with: @rugby_world_cup_host_country.stadium_capacity
    fill_in "Total attendance", with: @rugby_world_cup_host_country.total_attendance
    click_on "Update Rugby world cup host country"

    assert_text "Rugby world cup host country was successfully updated"
    click_on "Back"
  end

  test "destroying a Rugby world cup host country" do
    visit rugby_world_cup_host_countries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rugby world cup host country was successfully destroyed"
  end
end
