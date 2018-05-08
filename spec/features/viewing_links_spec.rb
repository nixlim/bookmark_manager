feature 'View links' do
  scenario 'view heading' do
    visit('/')
    expect(page).to have_content("List of bookmarks")
  end

  scenario 'view google link' do
    visit('/')
    expect(page).to have_content("http://www.google.com")
  end

  scenario 'view bbc link' do
    visit('/')
    expect(page).to have_content("http://www.bbc.co.uk/news")
  end
end
