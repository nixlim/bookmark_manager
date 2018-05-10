feature 'validate URL' do
  scenario 'validates URL submitted by user' do
    visit '/'
    fill_in 'url', with: 'cnn'
    click_on(class: 'submit_button')
    expect(page).to have_content 'Invalid URL submitted, try again.'
  end
end