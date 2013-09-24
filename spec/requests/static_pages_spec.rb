require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      page.should have_content ('Sample App')
    end
    it "should have the h1 'Sample App'" do
      visit root_path
      page.should have_selector ('h1', :text => 'Sample App')
    end
    it "should have the right title" do
      visit root_path
      page.should have_selector('title', :text=>"Ruby on Rails|Home")
    end
  end

  describe "Help Page" do
  	it "should have the content 'Help'" do
  		visit help_path
  		page.should have_content('Help')
  	end
  end

  describe "About Page" do
    it "should have the content 'About'" do
      visit about_path
      page.should have_content('About this')
    end
  end
end
