require 'spec_helper'

describe "StaticPages" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_content(heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
    before { visit root_path }

    let(:heading)    { 'SecondApp' }
    let(:page_title) { '' }
    it_should_behave_like "all static pages"

    it { should_not have_title('| Home') }
  end
  describe "Help page" do
    before { visit help_path }
    let(:heading)    { 'Help' }
    let(:page_title) { 'Help' }
    it_should_behave_like "all static pages"
  end
  describe "About page" do
    before { visit about_path }
    let(:heading)    { 'About us' }
    let(:page_title) { 'About us' }
    it_should_behave_like "all static pages"
  end
  describe "contact page" do
    before { visit contact_path }
    let(:heading)    { 'contact' }
    let(:page_title) { 'contact' }
    it_should_behave_like "all static pages"
  end
end
