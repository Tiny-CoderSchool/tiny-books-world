class UsersController < ApplicationController
  def index
    @user = User.find_by_id(current_user.id)
    @books = @user.books
  end

  def request_book
    #TO DO
  end

  def confirm_lending
    #TO DO
  end


end
