require 'rails_helper.rb'

feature "Player creates a battle" do
    scenario "Player successfully navigates to the create battle page from the game lobby page" do
        visit battles_path
        expect(page).to have_content('Battle Lobbies')
        click_link 'Create New'
        expect(page).to have_content('Upload Photos')
        expect(page).to have_content('Minimum of four players')
    end
end

feature "Player joins an existing game" do
    scenario "Player successfully navigates to the voting page from the game lobby page" do
        visit battles_path
        expect(page).to have_content('Battle Lobbies')
        click_link 'Create New'
        expect(page).to have_content('Upload Photos')
        expect(page).to have_content('Minimum of four players')


        
    end
end

feature "Player votes on photo" do
    scenario "Player successfully navigates to the create battle page from the game lobby page" do
        visit battles_path
        expect(page).to have_content('Battle Lobbies')
        click_link 'Create New'
        expect(page).to have_content('Upload Photos')
        expect(page).to have_content('Minimum of four players')
    end
end

feature "Player views results of game" do
    scenario "Player successfully navigates to the create battle page from the game lobby page" do
        visit battles_path
        expect(page).to have_content('Battle Lobbies')
        click_link 'Create New'
        expect(page).to have_content('Upload Photos')
        expect(page).to have_content('Minimum of four players')
    end
end