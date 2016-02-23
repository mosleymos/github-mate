require 'spec_helper'

describe 'Error pages' do
  it 'should display 404 error' do
    visit '/not_found'
    expect(page).to have_content 'Page not found'
  end

  it 'should display 500 error' do
    visit '/server_error'
    expect(page).to have_content 'Server error'
  end
end
