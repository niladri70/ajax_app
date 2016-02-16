class UserController < ApplicationController
  def index
  	@reg = Registration.all
  	
  end


  def new
  	@reg = Registration.new
  end

  def create
  	@reg = Registration.create(reg_params)
  	redirect_to user_index_path
  end

  def edit
  	@reg = Registration.find(params[:id])
  end

  def update
  	@reg = Registration.find(params[:id])
	@reg.update(reg_params)
	redirect_to user_index_path


  end

  def destroy
  	@reg = Registration.find(params[:id])
  	@reg.delete
  	redirect_to user_index_path
  end

  def show

  end

  private
  def reg_params
  	params.require(:reg).permit(:name,:country,:state,:address)
  end
end
