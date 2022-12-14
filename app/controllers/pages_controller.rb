class PagesController < ApplicationController

  def home
  end

  def about
    @members = %w[Arnold Sly Bruce]
    # method to find someone in a list : use .select
    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end

  def contact
  end
end
