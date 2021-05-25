require "application_system_test_case"

class NewProductsTest < ApplicationSystemTestCase
  setup do
    @new_product = new_products(:one)
  end

  test "visiting the index" do
    visit new_products_url
    assert_selector "h1", text: "New Products"
  end

  test "creating a New product" do
    visit new_products_url
    click_on "New New Product"

    fill_in "Author", with: @new_product.author
    fill_in "Title", with: @new_product.title
    click_on "Create New product"

    assert_text "New product was successfully created"
    click_on "Back"
  end

  test "updating a New product" do
    visit new_products_url
    click_on "Edit", match: :first

    fill_in "Author", with: @new_product.author
    fill_in "Title", with: @new_product.title
    click_on "Update New product"

    assert_text "New product was successfully updated"
    click_on "Back"
  end

  test "destroying a New product" do
    visit new_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "New product was successfully destroyed"
  end
end
