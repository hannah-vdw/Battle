
# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation
feature 'Attack' do
  scenario 'Player 1 attack player 2 and receives message' do
    sign_in_and_play
    click_button 'Player 1 Attack'
    expect(page).to have_content('Hannah attacked Shaun')
  end

  # As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP by 10
  

end