class DashboardController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @themes = [ { name: 'red' }, { name: 'blue' } ]
  end
end
