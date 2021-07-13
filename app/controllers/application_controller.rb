class ApplicationController < ActionController::Base
    before_action :authenticate_user!, except: [:index, :show, :send_message]
end
