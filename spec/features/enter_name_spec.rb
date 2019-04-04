feature 'Enter birthday' do
  scenario 'submits day and month' do
    visit ('/')
    fill_in :name, with: 'Akua'
    fill_in :day, with: '04'
    fill_in :month, with: '04'
    click_button 'Go'
    expect(page).to have_content 'Happy Birthday Akua'
  end
end
