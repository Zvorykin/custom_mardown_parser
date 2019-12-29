class SpaController < ApplicationController
  skip_forgery_protection

  def index; end

  def parse
    result = ParseMarkdownService.new(params[:markdown]).call

    render json: { html: result }
  end
end
