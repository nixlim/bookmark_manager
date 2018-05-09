feature 'View links' do
  scenario 'view heading' do
    visit('/')
    expect(page).to have_content("List of bookmarks")
  end

  scenario 'view google link' do
    visit('/')
    expect(page).to have_content("http://google.com")
  end

  scenario 'view makers link' do
    visit('/')
    expect(page).to have_content("http://www.makersacademy.com")
  end

  scenario 'view makers link' do
    visit('/')
    expect(page).to have_content("http://news.bbc.co.uk")
  end
end
