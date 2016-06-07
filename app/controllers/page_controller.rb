class PageController < ApplicationController
  before_action :authenticate_user!, except: [:home, :about, :faqs]
  # another way of doing above line is: before_action :authenticate_user!, only: [:faqs]
  # but it all depends on your preference and how much clean code you want to write
  def home
  end

  def about
  end

  def faqs
  end

  def contact
  end
end
