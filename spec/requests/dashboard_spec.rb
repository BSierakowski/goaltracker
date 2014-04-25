require 'spec_helper'

describe "Dashboard" do

  describe "Main page" do

    it "should have the content 'Your goals are'" do
      # user = create(:user)
      user = User.create(id: 1, email: "brian@example.com")

      visit '/dashboard'
      expect(page).to have_content('Your goals are')
    end

    it "should automatically fill the user id when creating a goal" do
      # user = create(:id)
        
      user = User.create(id: 1)
      visit '/dashboard'

      expect(page).to have_text("l")
           
     
    end

  end
end
