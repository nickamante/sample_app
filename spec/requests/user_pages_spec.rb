require 'spec_helper'

describe "UserPages" do
  subject { page }
  before { visit signup_path }

  describe "Signup Page" do
    it { should have_selector('title', text: full_title('Sign Up')) }
    it { should have_selector('h1', text: 'Sign Up') }
  end
end
