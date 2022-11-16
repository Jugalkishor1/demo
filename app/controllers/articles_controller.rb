class ArticlesController < ApplicationController
  # http_basic_authenticate_with name: "abcd", password: "12"
  def index
    #debugger
    @articles = Article.all
    #flash.now[:notice] = "We have exactly #{@articles.size} books available."
    
  end

  def show
    #debugger
    @article = Article.find(params[:id])
    flash.keep[:notice]
     # redirect_to root_path
    #flash[:success] = "Success"
    #flash[:alert] = "Alert."
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "this is flash keep "
      redirect_to @article
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :body, :email, :password)
    end
end