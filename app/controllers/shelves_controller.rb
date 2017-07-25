class ShelvesController < ApplicationController
  def index
    @shelves = Shelf.where(user: current_user)
  end

  def new
    @shelf = Shelf.new
  end

  def show
    @shelf = Shelf.find_by_id(params[:id])
  end

  def create
    @shelf = Shelf.create(shelf_params)
    @shelf.user = current_user
    respond_to do |format|
      if @shelf.save
        format.html { redirect_to shelves_path, notice: 'Book was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private
  def shelf_params
    params.require(:shelf).permit(:name)
  end
end
