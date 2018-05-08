class ApplicationController < ActionController::Base

    @courses = Course.all
end
