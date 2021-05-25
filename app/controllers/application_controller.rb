class ApplicationController < ActionController::Base
    before_action :authenticate_admin!, except: :index
end
