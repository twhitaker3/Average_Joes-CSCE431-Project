class WelcomeController < ApplicationController
  before_filter :authenticate_admin!, except: [:home]
  def home
  end
end

