class ContentController < ApplicationController
  before_filter :authenticate_user!
  
  def monthly
    authorize! :view, :monthly, :message => "Sorry access limited to monthly plan subscribers only."
  end

  def quarterly
    authorize! :view, :quarterly, :message => "Sorry access limited to quarterly plan subscribers only."
  end

  def yearly
    authorize! :view, :yearly, :message => "Sorry access limited to yearly plan subscribers only."
  end
end
