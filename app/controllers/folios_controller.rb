class FoliosController < ApplicationController

  layout "folio"

	def index
	  @folio_items =  Folio.all
	end

    def angular
      @angular_folio_items = Folio.angular
    end

	def new
	  @folio_item = Folio.new
    3.times {@folio_item.technologies.build}
	end

	def create
      @folio_item = Folio.new(folio_params)
      if @folio_item.save
      	redirect_to @folio_item
      else
      	render 'new'
      end
	end

	def edit
      @folio_item = Folio.find(params[:id])
  end

	def update
      @folio_item = Folio.find(params[:id])
      if @folio_item.update(folio_params)
      	redirect_to @folio_item
      else
      	render 'new'
      end
	end

	def show
	  @folio_item = Folio.find(params[:id])
	end

	def destroy
      @folio_item = Folio.find(params[:id])
      if @folio_item.destroy
        redirect_to folios_path
      end
	end

	private

	  def folio_params
        params.require(:folio).permit(:title, :subtitle, :body, technologies_attributes: [:name])
	  end
end
