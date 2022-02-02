class EventController < ApplicationController
  def index
    news = HTTP.auth(Rails.application.api_keys.news_key).get("https://api.thenewsapi.com/v1/news/top&locale=us&limit=3").parse(:json)

    render json: news

  end
end


# tgIGF1lNf5AMfha2WwclJgMd1JQqYHmIkp4evtcy