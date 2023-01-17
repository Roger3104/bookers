class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.new
    book.save
    redirect_to '/books'
  end

  def index
    # モデル名.order("id")
    @books = Book.order('id')
  end

  def show
  end

  def edit
  end

  private
  def list_params
    params.require(:book).permit(:title, :body)
  end

end
