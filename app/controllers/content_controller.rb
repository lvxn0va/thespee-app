class ContentController < ApplicationController
  before_filter :authenticate_user!
  
  def monthly
    authorize! :view, :all, :message => "Sorry access limited to plan subscribers only."
  end

  def quarterly
    authorize! :view, :all, :message => "Sorry access limited to plan subscribers only."
  end

  def yearly
    authorize! :view, :all, :message => "Sorry access limited to plan subscribers only."
  end
end
