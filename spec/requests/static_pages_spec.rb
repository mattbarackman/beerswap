require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Beer Swap'" do
      visit '/static_pages/home'
      page.should have_content('Beer Swap')
    end
  end

  describe "Help page" do

    it "should have the content 'Help Page'" do
      visit '/static_pages/help'
      page.should have_content('Help Page')
    end
  end

  describe "About page" do

    it "should have the content 'About me'" do
      visit '/static_pages/about'
      page.should have_content('About me')
    end
  end 
end
