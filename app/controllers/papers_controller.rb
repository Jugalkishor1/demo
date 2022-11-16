class PapersController < ApplicationController
  def index
    @papers = Paper.all
  end

  def show
    @paper = Paper.find(params[:id])
  end

  def new
    @paper = Paper.new
  end

  def create
    # debugger
    @paper = Paper.new(paper_params)

    if @paper.save
      flash[:notice] = "You have registered succesfully."

      redirect_to @paper
    else
      render "new"
    end
  end

  def edit
    @paper = Paper.find(params[:id])
  end

  def update
    @paper = Paper.find(params[:id])

    if @paper.update(paper_params)
      redirect_to @paper
    else
      render "edit"
    end
  end

  private
    def paper_params
      params.require(:paper).permit(:title, :price, :out_of_print, :supplier_id, :editor_id, :picture)
    end
end