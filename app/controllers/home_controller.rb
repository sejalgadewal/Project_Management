class HomeController < ApplicationController
    before_action :authenticate_user!
    def index
      @teams = Team.where('id = ?', current_user.team_id)
      @projects = Project.where('team_id = ?', current_user.team_id)
    end
end