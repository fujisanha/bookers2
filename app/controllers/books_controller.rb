class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book)
  end
  
  def index
    @user = current_user
    @books = Book.all
  end

  def show
    @user = current_user
    @book = Book.find(params[:id])
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to '/books'
  end

  def edit
  end
  
  private
  
  def book_params
    params.permit(:title, :body)
  end
  
end
