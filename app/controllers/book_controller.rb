class BookController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find_by(id: params[:id])
    if @book.nil?
      # render action: "index", layout: false
      render layout: false

    end
  end

  def update
    @book = Book.find(params[:id])
      if @book.update(book_params)
        redirect_to(@book)
      else
        render "edit"
      end
    end
end