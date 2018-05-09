feature 'View links' do
  scenario 'view heading' do
    visit('/')
    expect(page).to have_content("List of bookmarks")
  end

  scenario 'view google link' do
    visit('/')
    expect(page).to have_content("http://google.com")
  end
end
