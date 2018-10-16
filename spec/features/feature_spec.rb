# feature 'Testing Infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit ('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'Filling in player names' do
  scenario 'players are asked for their names which appear on the page' do
    visit('/')
    fill_in :player_1_name, with: 'Lucas'
    fill_in :player_2_name, with: 'Zoe'
    click_button('Submit')
    expect(page).to have_content('Lucas vs Zoe')
  end
end
