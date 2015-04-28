class AdminController < ApplicationController
  respond_to :html
  skip_before_filter :authenticate_user!, :only => :show, :if => lambda { 
    if params[:id]
      @admins = Admin.find(params[:id])
      @admins and @admins.public?
    else
      false
    end
  }
  def index
    @controllers = Admin.all
    respond_with(@admins)
  end


  def new
    @admin = Admin.new(:invitation_token => params[:invitation_token])
    @admin.email = @admin.invitation.recipient_email if @admin.invitation
    respond_with(@admin)
  end

  def edit
  end

  def create
    @admin = Admin.new(params[:admin])
    @admin.save
    respond_with(@admin)
  end

  def update
    @admin.update_attributes(params[:admin])
    respond_with(@admin)
  end

  def destroy
    @admin.destroy
    respond_with(@admin)
  end

  private
    def set_controller
      @admin = Admin.find(params[:id])
    end
end
