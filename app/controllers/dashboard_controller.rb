class DashboardController < ApplicationController
  def index
    user = User.find(1)
    @goals = user.goals
  end
end
