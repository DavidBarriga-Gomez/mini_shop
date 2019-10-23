require 'rails_helper'

RSpec.describe 'Merchant Index Page', type: :feature do
  before(:each) do
    @merchant_1 = Merchant.create(name: 'David', address: '4942 willow street', city: 'Denver', state: 'Colorado', zip: '80238')
    @merchant_2 = Merchant.create(name: 'Scott', address: '4942 willow street', city: 'Denver', state: 'Colorado', zip: '80238')
    @merchant_3 = Merchant.create(name: 'Ollie', address: '4942 willow street', city: 'Denver', state: 'Colorado', zip: '80238')
    @merchant_4 = Merchant.create(name: 'Ryan', address: '4942 willow street', city: 'Denver', state: 'Colorado', zip: '80238')
  end

  it 'shows each merchant name' do
    visit '/merchants'

    expect(page).to have_content('All Merchants')
    expect(page).to have_content(@merchant_1.name)
    expect(page).to have_content(@merchant_2.name)
    expect(page).to have_content(@merchant_3.name)
    expect(page).to have_content(@merchant_4.name)
  end
end
