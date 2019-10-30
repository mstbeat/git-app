class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

<<<<<<< Updated upstream
  # GET /articles
  # GET /articles.json
=======
>>>>>>> Stashed changes
  def index
    @articles = Article.all
  end

<<<<<<< Updated upstream
  # GET /articles/1
  # GET /articles/1.json
  def show
  end

  # GET /articles/new
=======
  def show
  end

>>>>>>> Stashed changes
  def new
    @article = Article.new
  end

<<<<<<< Updated upstream
  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.json
=======
  def edit
  end

>>>>>>> Stashed changes
  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

<<<<<<< Updated upstream
  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
=======
>>>>>>> Stashed changes
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

<<<<<<< Updated upstream
  # DELETE /articles/1
  # DELETE /articles/1.json
=======
>>>>>>> Stashed changes
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
<<<<<<< Updated upstream
    # Use callbacks to share common setup or constraints between actions.
=======
>>>>>>> Stashed changes
    def set_article
      @article = Article.find(params[:id])
    end

<<<<<<< Updated upstream
    # Never trust parameters from the scary internet, only allow the white list through.
=======
>>>>>>> Stashed changes
    def article_params
      params.require(:article).permit(:title, :author, :text)
    end
end
