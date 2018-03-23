feature 'Ratings Home Page' do
  scenario 'Should visit the homepage and see an invitation' do
    visit '/'
    expect(page.status_code).to eq 200
    expect(page).to have_content('Please share your experience with us')
  end

  scenario 'the homepage has buttons to leave a rating' do
    visit '/'
    expect(page).to have_css('button', count: 5)
  end

  scenario 'leaving a score' do
    visit '/'
    click_button(0)
    expect(page).to have_content('Thanks for sharing your experience with us')
  end
end
