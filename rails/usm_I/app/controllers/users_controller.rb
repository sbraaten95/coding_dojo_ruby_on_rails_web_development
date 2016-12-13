class UsersController < ApplicationController
  def index
  	@users = User.all
  	render 'index'
  end
  def show
    @user = User.find(params[:id])
    render 'show'
  end
  def new
  	render 'new'
  end
  def edit
    @user = User.find(params[:id])
    render 'edit'
  end
  def update
    User.update(params[:id], first_name:params[:user]['first'], last_name:params[:user]['last'], email_address:params[:user]['email'], password:params[:user]['password'])
    @user = User.find(params[:id])
    render 'show'
  end
  def create
  	User.create(first_name:params[:user]['first'], last_name:params[:user]['last'], email_address:params[:user]['email'], password:params[:user]['password'])
  	redirect_to '/'
  end
  def destroy
    User.destroy(params[:id])
    redirect_to '/'
  end
end
