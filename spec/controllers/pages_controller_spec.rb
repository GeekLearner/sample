require 'spec_helper'

describe PagesController do
  render_views
 
  before(:each) do
    @base_title = "ROR sample"
  end
      
  describe "GET 'home'" do
    it "returns http success" do
      visit '/pages/home'
      response.should be_success
    end

    it "should have the right title" do
      visit '/pages/home'
      page.should have_selector('title',
        :text => "#{@base_title} | Home")
    end

    it "should have a non-blank body" do
      visit '/pages/home'
      response.body.should_not =~ /<body>\s*<\/body>/
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end

    it "should have the right title" do
      visit '/pages/contact'
      page.should have_selector('title',
        :text => "#{@base_title} | Contact")
    end
  end
 
   describe "GET 'about'" do
    it "returns http success" do
      get 'about'  
      response.should be_success
    end

    it "should have the right title" do
      visit '/pages/about'
      page.should have_selector('title',
        :text => "#{@base_title} | About")
    end
  end
 
end
