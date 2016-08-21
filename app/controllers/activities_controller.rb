class ActivitiesController < ApplicationController
	def index
		@activities = Activity.all
	end
	def new
		@activity = Activity.new
	end
	def create
		@activity = Activity.new(activity_params)
		if @activity.save
			redirect_to '/activities'
		else
			render 'new'
		end
	end

	def show
		@activity = Activity.find(params[:id])
	end

	def edit
		@activity = Activity.find(params[:id])
	end

	def update
		@activity = Activity.find(params[:id])
		if @activity.update_attributes(activity_params)
			redirect_to(:action => 'show', :id => @activity.id)
		else
			render 'edit'
		end
	end

	private
		def activity_params
			params.require(:activity).permit(:activity_name)
		end
end
