feature 'Adding bookmarks' do
  scenario 'there is a submit button' do
    visit '/'
    expect(page).to have_button(value: "Add new bookmark")
  end

  scenario 'add a new link' do
    visit '/'
    fill_in 'url', with: "http://www.cnn.com"
    click_on(class: 'submit_button')
    expect(page).to have_content "cnn.com"
  end
end
