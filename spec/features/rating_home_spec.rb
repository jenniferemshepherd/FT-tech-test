feature 'Ratings Home Page' do
  scenario 'Should visit the homepage and see a welcome message' do
    visit '/'
    expect(page.status_code).to eq 200
    expect(page).to have_content('Please share your experience with us')
  end
end
