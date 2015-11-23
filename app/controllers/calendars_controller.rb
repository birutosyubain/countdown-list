class CalendarsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_calendar, only: [:edit, :update, :destroy]
  
  def index
    @user = User.find(params[:user_id])
    redirect_to(root_path) unless current_user==@user
    @calendar = @user.calendars
  end
  
  def show
  end
  
  def edit
  end

  def update
    if @calendar.update(calendar_params)
      redirect_to user_calendars_path
    else
      render 'edit'
    end
  end
  
  def new
    @calendar = Calendar.new
    @user = User.find(params[:user_id])
  end
  
  def create
    @calendar = Calendar.new(calendar_params)
    @calendar.user = current_user
    if @calendar.save
      flash[:success] = "Calendar created!"
      redirect_to user_calendars_path
    else
      render 'new'
    end
  end

  def destroy
    @calendar.destroy
    redirect_to user_calendars_path
  end
  
  private
  
  def calendar_params
    params.require(:calendar).permit(:title, :startdate, :enddate, :category, :content)
  end
  
  def set_calendar
    @calendar = Calendar.find(params[:id])
    @user = User.find(params[:user_id])
  end

end
