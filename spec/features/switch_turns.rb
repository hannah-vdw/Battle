# As two Players,
# So we can continue our game of Battle,
# We want to switch turns
feature 'Switch turns' do
  context 'Seeing the current turn' do
    scenario 'At the start of the game' do
      sign_in_and_play
      expect(page).to have_content("Hannah's turn")
    end

    scenario 'After player 1 attacks' do
      sign_in_and_play
      click_button 'Attack'
      click_link 'OK'
      expect(page).not_to have_content("Hannah's turn")
      expect(page).to have_content("Shaun's turn")
    end
  end
end