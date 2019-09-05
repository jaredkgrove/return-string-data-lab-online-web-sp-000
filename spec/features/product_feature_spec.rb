require 'rails_helper'

RSpec.describe "Product Index", type: :feature do
  before do
    Product.destroy_all
  end

  it 'gets the description and inventory', js: true do
    # Capybara.default_max_wait_time = 10
    # product = Product.create!(name: "Test Product", inventory: 0, description: "This is a test description with more text than should be there.")
    # visit products_path
    # expect(page).to have_content product.name
    # expect(page).not_to have_content product.description
    # click_button "More Info"
    # #find(id: product.id.to_s).trigger("click") 
    
    # expect(page).to have_content product.description
    # expect(page).to have_content "Sold Out"
    # product.inventory = 1
    # product.save
    # visit products_path
    # click_button "More Info"
    # #find(id: product.id.to_s).trigger("click") 
    # expect(page).to have_content "Available"
  end
end
