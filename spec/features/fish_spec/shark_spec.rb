require "spec_helper"

feature "Homepage" do
  scenario "links take you to fish pages" do
    visit "/"

    click_link("shark")
    expect(page).to have_content("salt water")
  end
end

feature "starfish" do
  scenario "links to wikipedia" do
    visit "/1"

    click_link("learn more")
    expect(page).to have_content("Starfish")
  end
end

feature "koifish" do
  scenario "links to wikipedia page" do
    visit "/koifish"

    click_link("learn more")
    expect(page).to have_content("Koi")
  end
end

feature "shark" do
  scenario "link is visible" do
    visit "/shark"

    find_link('learn more').visible?
  end
end

feature "Back to homepage" do
  scenario "links back to homepage" do
    visit "/shark"

    click_link("Homepage")
    expect(page).to have_content("Fish Homepage")
  end
end

