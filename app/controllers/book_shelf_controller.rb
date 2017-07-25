class BookShelfController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @book = Book.find_by_id(params[:book_id])
    @shelves = current_user.shelves
  end

  def add_book
    book_id = params[:book_id]
    shelf_id = params[:shelf_id]
    @bookshelf = BookShelf.create(book_id: book_id, shelf_id: shelf_id, active: 1)
    respond_to do |format|
      if @bookshelf.save
        format.html { redirect_to shelf_path(shelf_id), notice: 'Book was successfully added to shelf.' }
      else
        format.html { render :index }
      end
    end
  end

  def remove_book
    book_id = params[:book_id]
    shelf_id = params[:shelf_id]
    @bookshelf = BookShelf.where(book_id: book_id, shelf_id: shelf_id, active: 1).first
    if @bookshelf.present?
      @bookshelf.active = 0
      respond_to do |format|
        if @bookshelf.save
          format.html { redirect_to shelf_path(shelf_id), notice: 'Book was successfully removed from shelf.' }
        else
          format.html { render :index }
        end
      end
    else
      redirect_to shelf_path(shelf_id), notice: 'Book was unsuccessfully removed from shelf.'
    end
  end
end
