class BooksController < ApplicationController
  
  def index
    @books = Book.all
    @book = Book.new
  end

  def create
    #データを受け取り新規登録
    @book = Book.new(book_params)
    #データベースに保存
    if @book.save 
      #show画面にリダイレクト（仮にindex）
      flash[:notice] = 'Book was successfully created.'
      redirect_to '/books'
    else 
      @books = Book.all.order(id: :asc)
      render :index
    end
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
      flash[:notice] = 'Book was successfully created.'
      redirect_to book_path(@book.id) 
    else
      render :edit
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end