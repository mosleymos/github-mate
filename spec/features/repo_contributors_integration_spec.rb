require 'spec_helper'

describe 'Visit root page' do
  it 'should display a form' do
    visit '/'
    expect(page).to have_content 'Git-mate'
    expect(page).to have_content 'Search for a repository'
  end

  it 'could do a research and display it' do
    visit '/'
    fill_in 'repo_search', :with => 'rails'
    click_button 'search'
    expect(page).to have_content 'rails'
    expect(page).to have_content 'capistrano'
    expect(page).to have_content 'rails_admin'
  end
end

describe 'Show repository informations' do
  it 'should display repository contributor informations' do
    visit '/search/repo/Bijoux/owner/Ataron'
    expect(page).to have_content 'LeMagnesium'
    expect(page).to have_content 'Ataron'
  end
end
