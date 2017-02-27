class Admin::Base < ApplicationController
  before_filter :block_non_administrators

  private
  def block_non_administrators
    unless @current_user and @current_user.admin
      flash[:warning] = "管理者権限が必要です"
      redirect_to :controller => '/main', :action => 'index'
      return false
    end
  end
end
