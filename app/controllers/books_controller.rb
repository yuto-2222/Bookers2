class BooksController < ApplicationController
  def create
    @book = Book.new(book_params)
    @books = Book.all
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @books = Book.all
  end


  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
