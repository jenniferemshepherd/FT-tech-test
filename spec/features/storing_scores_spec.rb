feature 'viewing scores' do
  scenario 'A user can see scores' do
    visit('/')
    click_button(1)
    click_button('Return')
    click_button(2)
    click_button('Return')
    click_button(-2)
    click_button('Return')
    click_button(0)
    expect(page).to have_content "1"
    expect(page).to have_content "2"
    expect(page).to have_content "-2"
    expect(page).to have_content "0"
  end

  scenario 'A users score is stored in the database' do
    visit('/')
    click_button(-1)
    expect(page).to have_content "-1"
  end
end
