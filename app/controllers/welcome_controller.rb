class WelcomeController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def filter
    @filter = TransactionFilter.new(params[:filter])
    @transactions =@filter.scope
  end
end
