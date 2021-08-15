class ListController < ApplicationController
	def list
		@lists = List.all
	end

	def show
		@list = List.find(params[:id])
		@items = ListItem.where(lid: params[:id])
	end

	def new
		@list = List.new
	end

	def create
		@list = List.new(list_params)

		if @list.save
			redirect_to :action => 'list'
		else
			render :action => 'new'
		end
	end

	def edit
	end

	def update
	end

	def delete
		List.find(params[:id]).destroy
		ListItem.where(lid: params[:id]).destroy_all

		redirect_to :action => 'list'
	end

	def list_params
		params.require(:lists).permit(:name)
	end
end
