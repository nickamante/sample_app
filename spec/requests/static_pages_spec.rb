require 'spec_helper'

describe "StaticPages" do
  subject { page }
  before { visit root_path }

  describe "Home Page" do
  	it { should have_selector('title', text: full_title('')) }

    it { should have_selector('h1', text: 'Sample App') }
  end

  describe "Help Page" do
    subject { page }
    before { visit help_path }

	  it { should have_selector('title', text: full_title('Help')) }
    it { should_not have_selector 'title', text: '| Home' }
    it { should have_selector('h1', text: 'Help') }
  end

  describe "About Page" do
    before { visit about_path }

  	it { should have_selector('title', text: full_title('About Us')) }
    it { should have_selector('h1', :text => 'About Us') }
  end

  describe "Contact Page" do
     before { visit contact_path }

  	it { should have_selector('title', text: full_title('Contact')) }
  	it { should have_selector('h1', text: 'Contact') }
  end
end
