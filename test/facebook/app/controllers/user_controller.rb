class UserController < ApplicationController
	 def new
	 	@user=User.new
	 end

	 def create
	 	@user=User.new(user_params)
	 	if @user.save
	    redirect_to user_index_path
	  	else
	    render 'new'
	  	end
	 	# @user.save
	 	# redirect_to user_index_path
	 end

	 def index
	 	@user=User.all
	 end

	 def edit
	 	@user=User.find_by_id(params[:id])
	 end

	 def update
	 	# binding.pry
	 	@user=User.find_by_id(params[:id])
	 	@user.update_attributes(user_params)
	 	redirect_to user_index_path
	 end

	 def destroy
	 	@user=User.find_by_id(params[:id])
	 	@user.destroy
		redirect_to user_index_path
	 end

	def show
		@user=User.find(params[:id])
	end

	private
	 def user_params
	 	params.require(:user).permit(:Firstname,:Lastname,:Email,:password)
	 end
end
