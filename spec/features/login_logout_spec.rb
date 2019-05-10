require 'rails_helper'

RSpec.describe "logged in user homepage", :type => :view do
  it "greets user with their name after login" do
    visit '/login'
    fill_in 'name', with: 'gazurbo'
    click_button 'login'
    expect(page.body).to include 'Hi, gazurbo.'
  end

  it "provides a logout link" do
    visit '/login'
    fill_in 'name', with: 'gazurbo'
    click_button 'login'
    expect(page.body).to have_button('logout')
  end
end

RSpec.describe "non logged-in user homepage", :type => :view do
  it "says Hello there!" do
    visit '/'
    expect(page.body).to include 'Hello there!'
  end

  it "provides a login link" do
    visit '/'
    expect(page.body).to have_link("log-in", href: "/login")
  end
end
