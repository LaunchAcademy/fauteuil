require 'rails_helper'

feature 'user adds a chair',%q(
  As a user
  I want to be able to add a chair to the website
  so that I can see it in the index page

  Acceptance Criteria

  I should be signed in!
  I can add a chair with: a new picture, a name, a breif desciption(optional),
  and its characteristics (some will be tick form, other fill-ins)
  I should be alerted if any field is filled-in in the wrong fashion
  If the chair is succesfully saved, I should be alerted so and redirected to the newly chair
  show page.
  I should be notified by email everytime a user reviews my post.
) do
  let(:user) { FactoryGirl.create(:user) }
  let!(:category) { FactoryGirl.create(:category) }

  scenario 'creates a valid chair' do
    login_as(user)
    visit new_chair_path

    fill_in "Name", with: "Bean Bag"
    fill_in "Location", with: "Boston"
    fill_in "Manufacturer", with: "Ikea"
    fill_in "Description", with: "This is a sleepy kind of chair"

    select category.name, from: "chair[category_id]"

    click_on "Add Chair"

    expect(page).to have_content("Bean Bag")
  end

  scenario 'add two chairs with same name' do
    #create a name to add in database so that next one will conflict
    chair = FactoryGirl.create(:chair, name: "Joe")

    login_as(user)
    visit new_chair_path

    #name "Joe" already exists
    fill_in "Name", with: "Joe"
    fill_in "Location", with: "Boston"
    fill_in "Manufacturer", with: "Ikea"
    fill_in "Description", with: "This is a sleepy kind of chair"

    click_on "Add Chair"

    expect(page). to have_content("already been taken")
  end

  scenario 'user did not fill in required fields' do
    login_as(user)
    visit new_chair_path

    fill_in "Manufacturer", with: "Ikea"
    fill_in "Description", with: "This is a sleepy kind of chair"

    click_on "Add Chair"

    expect(page). to have_content("can't be blank")
  end

  scenario 'user is not signed in and wants to access page' do
    visit 'chairs/new'
    expect(page). to have_content("You need to sign in")
  end


end
