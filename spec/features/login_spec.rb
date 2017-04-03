require 'rails_helper'

RSpec.feature "Login", type: :feature do
  def login_with_name(name)
    visit "/login"

    fill_in :name, with: name
    click_button "login"
  end

  scenario "Users logs in with username" do
    login_with_name("Derek")

    expect(page).to have_text("Hi, Derek.")
  end

  scenario "User logs out" do
    login_with_name("Mike")

    click_button "logout"

    expect(page).not_to have_text("Mike")
  end
end 
