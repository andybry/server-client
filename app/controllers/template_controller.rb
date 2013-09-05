class TemplateController < ApplicationController

  def index
    relative_template_path = params[:template]
    full_template_path = Rails.root.join('app', 'views', relative_template_path)
    template = open(full_template_path).read
    render text: template, layout: false, content_type: 'text/plain'
  end

end
