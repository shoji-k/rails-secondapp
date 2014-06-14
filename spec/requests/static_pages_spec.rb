require 'spec_helper'

describe "StaticPages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }
    it { should have_content('SecondApp') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end
  describe "Help page" do
    before { visit help_path }
    it "should have the content Help" do
      expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
      expect(page).to have_title('Ruby on Rails Tutorial SecondApp | Help')
    end
  end
  describe "About page" do
    before { visit about_path }
    it "should have the content About Us" do
      expect(page).to have_content('About us')
    end
    it "should have the title 'About'" do
      expect(page).to have_title('Ruby on Rails Tutorial SecondApp | About us')
    end
  end
  describe "contact page" do
    before { visit contact_path }
    it "should have the content contact" do
      expect(page).to have_content('contact')
    end
    it "should have the title 'contact'" do
      expect(page).to have_title('Ruby on Rails Tutorial SecondApp | contact')
    end
  end

end
