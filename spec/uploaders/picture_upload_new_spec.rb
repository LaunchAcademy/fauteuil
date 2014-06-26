require 'rails_helper'


feature 'user visits chairs new page to add a photo of a chair' do

  scenario 'User loads photo' do

    category = FactoryGirl.create(:category)
    user = FactoryGirl.create(:user)
    login_as(user)
    visit new_chair_path

    save_and_open_page

    fill_in "Name", with: "Bean Bag"
    fill_in "Location", with: "Boston"
    fill_in "Manufacturer", with: "Ikea"
    fill_in "Description", with: "This is a sleepy kind of chair"

    select category.name, from: "chair[category_id]"


    attach_file('Picture', 'spec/fixtures/avatar.jpeg')



    click_button 'Add Chair'

    expect(page).to have_content("Success!")

  end
end
