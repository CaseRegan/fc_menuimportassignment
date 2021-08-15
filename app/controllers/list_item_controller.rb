class ListItemController < ApplicationController
	def list
		@list_items = ListItem.all
	end

	def show
		@list_item = ListItem.find(params[:id])
	end

	def new
		@list_id = params[:lid]
		@menu_items = MenuItem.all
	end

	def create
		@list_item = ListItem.new
		@list_item.mid = params[:mid]
		@list_item.lid = params[:lid]

		if @list_item.save
			redirect_to :controller => 'list', :action => 'show', :id => @list_item.lid
		else
			render :action => 'new'
		end
	end

	def edit
	end

	def update
	end

	def delete
		lid = ListItem.find(params[:id]).lid
		ListItem.find(params[:id]).destroy

		redirect_to :controller => 'list', :action => 'show', :id => lid
	end
end
