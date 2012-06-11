require 'spec_helper'

describe "Static pages" do

 let(:base_title) { "Beer Swap" }

  describe "Home page" do

    it "should have the content 'Beer Swap'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Beer Swap')    
    end
	it "should have the right title" do
	  visit '/static_pages/home'
	  page.should have_selector('title',
	          :text => "#{base_title} | Home")
	end
  end

  describe "Help page" do

    it "should have the content 'Help Page'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help Page')    
  	end
	it "should have the right title" do
	  visit '/static_pages/help'
	  page.should have_selector('title',
	          :text => "#{base_title} | Help")
	end
  end

  describe "About page" do

    it "should have the content 'About me'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About me')
    end
	
	it "should have the right title" do
	  visit '/static_pages/about'
	  page.should have_selector('title',
	          :text => "#{base_title} | About")
	end
  end 


end
