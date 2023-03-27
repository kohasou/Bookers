class BooksController < ApplicationController
  
  def create
    @book = Book.new(book_params)
    
    respond_to do |format|
      if @book.save
        format.html { redirect_to  books_path, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @books }
        
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
  end
  
  end
  
  def index
    @books = Book.all
    @book = Book.new
  end
  
  def show
  end
  
  def edit
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
