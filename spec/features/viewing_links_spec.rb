feature 'View links' do
  scenario 'Views links' do
    visit('/')
    expect(page).to have_content("Listzzz of bookmarks")
  end
end
