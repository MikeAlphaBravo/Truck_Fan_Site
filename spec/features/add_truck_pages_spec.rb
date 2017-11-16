require 'rails_helper'

describe 'the add a truck process' do
  it 'adds a new truck' do
    visit '/'
    click_link 'Submit a Truck'
    fill_in 'Link', :with => 'https://image.freepik.com/free-icon/pick-up-truck-side-view-silhouette_318-43112.jpg'
    fill_in 'Make', :with => 'Shadow Corp.'
    fill_in 'Model', :with => 'Midnight'
    fill_in 'Year', :with => '2099'
    fill_in 'Author', :with => 'futureman'
    click_on 'Create Truck'
    expect(page).to have_content 'Shadow Corp.'
  end

  it "gives error when no input is entered" do
    visit new_truck_path
    click_on 'Create Truck'
    expect(page).to have_content 'errors'
  end
end
