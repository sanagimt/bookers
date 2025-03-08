class BooksController < ApplicationController
  
  def index
    @book = Book.new
  end

  def create
    #データを受け取り新規登録
    book = Book.new(book_params)
    #データベースに保存
    book.save
    #show画面にリダイレクト
    redirect_to 'books/:id'
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
