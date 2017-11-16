require 'rails_helper'

describe "filter trucks by make" do
  it "filter by Jeep" do
    visit '/'
    click_link 'Submit a Truck'
    fill_in 'Link', :with => 'https://i.ytimg.com/vi/7gCnnBDORW0/maxresdefault.jpg'
    fill_in 'Make', :with => 'Jeep'
    fill_in 'Model', :with => 'Wrangler'
    fill_in 'Year', :with => '2012'
    fill_in 'Author', :with => 'WinchyWendell'
    click_on 'Create Truck'

    click_link 'Submit a Truck'
    fill_in 'Link', :with => 'http://hanabi.autoweek.com/sites/default/files/styles/gen-1200-675/public/2016_nissan_titan_xd_08_0.jpg?itok=4aRXpDna'
    fill_in 'Make', :with => 'Nissan'
    fill_in 'Model', :with => 'Titan XD'
    fill_in 'Year', :with => '2016'
    fill_in 'Author', :with => 'IHaveToMuchMoney'
    click_on 'Create Truck'

    # click_on 'Model'
    click_on 'Jeep'
    expect(page).to have_content 'currently'
  end
end
