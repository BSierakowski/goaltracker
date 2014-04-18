require 'spec_helper'

describe "Dashboard" do

  describe "Main page" do
    
    it "should have the content 'Your goals are'" do
      # user = create(:user)
      user = User.create(email: "brian@example.com")
      visit '/dashboard'
      expect(page).to have_content('Your goals are')
    end

  end
end
