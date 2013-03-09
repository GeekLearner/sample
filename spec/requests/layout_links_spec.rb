require 'spec_helper'

describe "LayoutLinks" do
  
  it "should have a Home page at '/' " do
  	visit '/'
  	page.should have_selector('title', :content => "Home")
  end

  it "should have a Contact at '/contact' " do
  	visit '/contact' 
  	page.should have_selector('title', :content => "Contact")
  end

  it "should have a About at '/About' " do
  	visit '/about'
  	page.should have_selector('title', :content => "About")
  end

  it "should have a Help at '/help' " do
  	visit '/help'
  	page.should have_selector('title', :content => "Help")
  end



end
