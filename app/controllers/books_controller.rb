
class BooksController < ApplicationController
  def index
    if params[:author_id].present?
      author = Author.find(params[:author_id])
      @books = author.books.sample(1)
    elsif params[:query].present?
      @books = Book.search(params[:query])
    else
      @books = Book.all
    end
  end

  def show
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
    params.require(:book).permit(:author_id, :title, :description)
  end
  
end
