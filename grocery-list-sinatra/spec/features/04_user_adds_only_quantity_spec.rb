require "spec_helper"

feature "user adds grocery list item with optional quantity" do
  scenario "quantity added when filled form submitted" do
    visit "/groceries"

    expect(page).to have_content("12")
      end

      scenario "quantity not added when form submitted" do
        visit "/groceries"

        fill_in "Name", with: "Case of Beer"
        click_on "Add"

        expect(page).to_not have_content("24")
      end

    end
