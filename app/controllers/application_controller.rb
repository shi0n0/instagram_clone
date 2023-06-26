# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def index
  end
  before_action :authenticate_user!
end
