class AdminsController < ApplicationController
    before_action :authenticate_admin!
    
    def index 
        @admins = Admin.all
    end 

    def show 
        @admin = Admin.find(params[:id])
    end


    def new 
        @admin = Admin.new
    end

    def create
        Admin.create(admin_params)
        redirect_to '/admins'
    end   

    def edit 
        @admin = Admin.find(params[:id])
    end    

    def update 
        @admin = Admin.find(params[:id])
        @admin.update(admin_params)
        redirect_to '/admins'
    end

    def destroy 
        Admin.find(params[:id]).destroy
        redirect_to '/admins'
    end

    private
    # Using a private method to encapsulate the permissible parameters is
    # just a good pattern since you'll be able to reuse the same permit
    # list between create and update. Also, you can specialize this method
    # with per-user checking of permissible attributes.
    def admin_params
      params.require(:admin).permit(:email, :password)
    end
end