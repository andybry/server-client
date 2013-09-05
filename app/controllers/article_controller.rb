class ArticleController < ApplicationController

  def index
    format = params[:format]
    template_url = templates_path 'article/index.html.hbs'
    @article = Article.new
    case format
      when 'html'
        render layout: false
      when 'json'
        @data = {
          template_url: template_url,
          article: @article
        }
        render json: @data
      else
        render
    end
  end

end
