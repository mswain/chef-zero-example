class CoolController < ApplicationController
  def index
    MyRedisClient.set('super', 'cool')
    render inline: "<%= MyRedisClient.get 'super' %>"
  end
end
