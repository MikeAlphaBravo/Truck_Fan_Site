require 'rails_helper'

describe "the edit a truck process" do
  it "edits a truck" do
    visit '/'
    click_link 'Submit a Truck'
    fill_in 'Link', :with => 'https://image.freepik.com/free-icon/pick-up-truck-side-view-silhouette_318-43112.jpg'
    fill_in 'Make', :with => 'Shadow Corp.'
    fill_in 'Model', :with => 'Midnight'
    fill_in 'Year', :with => '2099'
    fill_in 'Author', :with => 'futureman'
    click_on 'Create Truck'
    click_on 'Shadow Corp., Midnight'
    click_on 'Edit Truck'
    fill_in 'Model', :with => 'Wash the dog'
    click_on 'Update Truck'
    expect(page).to have_content 'Wash the dog'
  end

  it "gives error when no description is entered" do
    visit '/'
    click_link 'Submit a Truck'
    fill_in 'Link', :with => 'https://image.freepik.com/free-icon/pick-up-truck-side-view-silhouette_318-43112.jpg'
    fill_in 'Make', :with => 'Shadow Corp.'
    fill_in 'Model', :with => 'Midnight'
    fill_in 'Year', :with => '2099'
    fill_in 'Author', :with => 'futureman'
    click_on 'Create Truck'
    click_on 'Shadow Corp., Midnight'
    click_on 'Edit Truck'
    fill_in 'Model', :with => ''
    click_on 'Update Truck'
    expect(page).to have_content 'errors'
  end
end
