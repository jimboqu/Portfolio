class FoliosController < ApplicationController
  before_action :set_folio, only:[:edit, :update, :show, :destroy]
  layout "folio"
  access all: [:show, :index, :angular], user: {except: [:destroy, :edit, :create, :new, :update]}, site_admin: :all

	def index
	  @folio_items =  Folio.by_position
	end

  def sort
    params[:order].each do |key, value| 
    Folio.find(value[:id]).update(position: value[:position])
    end
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
  end

	def update
      if @folio_item.update(folio_params)
      	redirect_to @folio_item
      else
      	render 'new'
      end
	end

	def show
	end

	def destroy
      if @folio_item.destroy
        redirect_to folios_path
      end
	end

	private

	  def folio_params
        params.require(:folio).permit(:title, :subtitle, :body, technologies_attributes: [:name])
	  end

    def set_folio
      @folio_item = Folio.find(params[:id])
    end
end
