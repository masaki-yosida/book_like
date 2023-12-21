# app/controllers/books_controller.rb
class BooksController < ApplicationController
  def index
    @books = Book.all
    @books = Article.order("created_at DESC")
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to books_path, notice: 'Book was successfully created.'
    else
      render :new
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :description)
  end
end
