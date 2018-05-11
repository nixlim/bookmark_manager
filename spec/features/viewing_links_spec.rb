feature 'View links' do
  scenario 'view heading' do
    visit('/')
    expect(page).to have_content("List of bookmarks")
  end

  scenario 'view google link' do
    visit('/')
    expect(page).to have_content("Google")
  end

  scenario 'view makers link' do
    visit('/')
    expect(page).to have_content("Makers Academy")
  end

  scenario 'view makers link' do
    visit('/')
    expect(page).to have_content("BBC News")
  end
end
