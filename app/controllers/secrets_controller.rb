class SecretsController < ApplicationController
  before_action :must_be_logged_in
  def index

  end

  private
  def must_be_logged_in
    redirect_to login_path unless session.include? :name
  end
end
