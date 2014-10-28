require 'spec_helper'

feature 'explicit decorator declaration' do
  scenario 'decorating cities' do
    City.create!(name: "Asakusa")
    visit '/cities'
    page.should have_content 'Asakusa'
    page.should have_content 'ASAKUSA'
  end
end
