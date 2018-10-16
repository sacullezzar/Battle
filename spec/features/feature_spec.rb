# feature 'Testing Infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit ('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'Filling in player names' do
  scenario 'players are asked for their names which appear on the page' do
    sign_in_and_play
    expect(page).to have_content('Lucas vs Zoe')
  end
end

feature 'View Hitpoints' do
  scenario "Players can see each other's hitpoints" do
    sign_in_and_play
    expect(page).to have_content('Lucas HP = 100 Zoe HP = 100')
  end
end
