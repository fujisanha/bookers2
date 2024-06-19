class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path(@book)
  end

  def index
  end

  def show
  end

  def edit
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body, :user_id)
  end
  
end
