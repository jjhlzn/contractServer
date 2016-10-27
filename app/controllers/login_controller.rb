class LoginController < ApplicationController
  skip_before_action :verify_authenticity_token
  def login
    loginResult = {success: true, errorMessage: '', name: '金军航', department: '技术部'}
    respond_to do |format|
      format.html
      format.json do
        render json: {status: 0, errorMessage: '', result: loginResult}
      end
    end
  end
  
  def registerdevice
    render json: {status: 0, errorMessage: ''}
  end
  
  def resetbadge
    render json: {status: 0, errorMessage: ''}
  end
end
