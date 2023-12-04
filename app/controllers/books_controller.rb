class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)

      if @book.save
        #成功時の
        flash[:notice] = "Book was successfully created."
        redirect_to  book_path(@book.id)
      
      else
        @books = Book.all
        render :index
      end
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      #成功時のメッセージ
      flash[:notice] = "Book was successfully updated."
      redirect_to book_path
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    #成功時のメッセージ
    flash[:notice] = "Book was successfully destroyed."
    redirect_to request.referer
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
