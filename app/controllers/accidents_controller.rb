class AccidentsController < ApplicationController
  def index
    @yesterday_accident = Accident.find_or_create_by(date: Date.yesterday)
    @today_accident = Accident.find_or_create_by(date: Date.today)
    @tweet_text = "今日のインターネット交通事故\n死亡:#{@today_accident.dead}\n負傷:#{@today_accident.injured}\n#{root_url}"
    @tweet_text = "【テストツイート】\n" + @tweet_text if Rails.env.development?
  end

  def create
    @accident = Accident.find_or_create_by(date: Date.today)
    case params[:status]
    when "injured"
      @accident.injured += 1
    when "dead"
      @accident.dead += 1
    else
      flash[:waring] = "不正なパラメーターです"
    end
    @accident.save
    redirect_to root_path
  end
end
