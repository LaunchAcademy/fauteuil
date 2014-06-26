require 'rails_helper'

feature 'search for chair' do


  scenario 'valid search by name' do
    chairs = FactoryGirl.create_list(:chair, 6)

  end
end
