require 'rails_helper'

describe 'Managing admin projects', type: :feature do
  before :each do
    User.where(id: 1, email:
      'testadmin@sheffield.ac.uk', name: 'testadmin', roles: 1).first_or_create(password:
      'password', password_confirmation: 'password')
  end

  it 'Signs me in' do
    visit '/users/sign_in'
    fill_in 'Email', with: 'testadmin@sheffield.ac.uk'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
    expect(page).to have_content 'successfully'
  end

  it 'Creates new project' do
    visit '/'
     page.find('link', visible: :all).click
     expect(response).to render_template(partial: '_form')
  
  
  end

end






