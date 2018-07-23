class FoliosController < ApplicationController
	def index
	  @folio_items =  Folio.all
	end


	def new
	  @folio_item = Folio.new
	end

	def create
      @folio_item = Folio.new(folio_params)
      if @folio_item.save
      	redirect_to @folio_item
      else
      	render 'new'
      end
	end

	def show
	end

	private

	  def folio_params
        params.require(:folio).permit(:title, :subtitle, :body)
	  end
end
