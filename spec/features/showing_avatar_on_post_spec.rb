require 'rails_helper'

RSpec.feature "Timeline", type: :feature do

  let(:user) {FactoryBot.create(:user)}

  scenario 'user can see their profile picture on top of the post' do
    visit unauthenticated_root_path
    sign_in_with(user)
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_css("img[src*='avatar.jpg']")
  end
end
