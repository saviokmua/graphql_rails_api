class HomeController < ApplicationController
  def index
    GraphqlRailsApiSchema.subscriptions.trigger('newLink', {}, Link.last)
    render json: { index: 'Subscription "newLink" was triggered!'}
  end
end
