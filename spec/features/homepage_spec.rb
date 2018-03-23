feature 'Ratings Home Page' do
  scenario 'see an invitation on the homepage' do
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
    click_button(1)
    expect(page).to have_content('Thanks for sharing your experience with us')
    expect(page).to have_content('1')
  end

  scenario 'the thanks page can return a user to the homepage' do
    visit '/'
    click_button(2)
    expect(page).to have_content('2')
    click_button('Return')
    expect(current_url).to have_content('/')
  end
end
