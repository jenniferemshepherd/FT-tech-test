feature 'viewing scores' do
  scenario 'A users score is stored in the database' do
    visit('/')
    click_button(-1)
    expect(page).to have_content "-1"
  end

  scenario 'A user can see stats on previous entries on the thank you page' do
    visit('/')
    store_many_ratings
    expect(page).to have_content "%"
  end
end
