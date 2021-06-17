
# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation
feature 'Attack' do
  scenario 'Player 1 attacks player 2 and receives message' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content('Hannah attacked Shaun')
  end
end

# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10
feature 'Attack damage' do
  scenario 'Player 1 attacks player 2, HP goes down by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_content('Shaun HP: 60')
    expect(page).to have_content('Shaun HP: 50')
  end
end
