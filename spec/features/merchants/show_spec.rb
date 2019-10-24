require 'rails_helper'

RSpec.describe "When I visit '/merchants/:id'", type: :feature do
  before(:each) do
    @merchant_1 = Merchant.create(name: 'David', address: '4942 willow street', city: 'Denver', state: 'Colorado', zip: '80238')
    @merchant_2 = Merchant.create(name: 'Scott', address: '4942 willow street', city: 'Denver', state: 'Colorado', zip: '80238')
    @merchant_3 = Merchant.create(name: 'Ollie', address: '4942 willow street', city: 'Denver', state: 'Colorado', zip: '80238')
    @merchant_4 = Merchant.create(name: 'Ryan', address: '4942 willow street', city: 'Denver', state: 'Colorado', zip: '80238')
  end

  it 'I see a merchant with that id and all the merchants information' do
    visit "/merchants/#{@merchant_1.id}"

    expect(page).to have_content(@merchant_1.name)
    expect(page).to have_content(@merchant_1.address)
    expect(page).to have_content(@merchant_1.city)
    expect(page).to have_content(@merchant_1.state)
    expect(page).to have_content(@merchant_1.zip)
  end
end
