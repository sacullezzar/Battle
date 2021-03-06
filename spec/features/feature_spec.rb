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

feature 'Player 1 attacks Player 2' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content('Lucas attacked Zoe')
  end
  scenario 'Displays reduced hitpoints' do
    sign_in_and_play
    attack_and_continue
    expect(page).to have_content('Lucas HP = 100 Zoe HP = 90')
  end
end

feature 'Switching turns' do
  scenario 'switches to the other player at the end of a turn' do
    sign_in_and_play
    attack_and_continue
    attack_and_continue
    expect(page).to have_content('Lucas HP = 90 Zoe HP = 90')
  end
end

feature 'winning and losing' do
  scenario 'game ends when either player reaches 0HP' do
    sign_in_and_play
    19.times(attack_and_continue)
    expect(page).to have_content('GAME OVER')
  end
end
