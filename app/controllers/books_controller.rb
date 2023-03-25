class BooksController < ApplicationController
  def top2
  end
  
  def new
    @book = Book.new
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to 'books'
  end
  
  def index
    @books = Book.all
  end
  
  def show
  end
  
  def edit
  end
end
