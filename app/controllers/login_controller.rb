class LoginController < ApplicationController
  def login
    loginResult = {success: 0, errorMessage: '', name: '金军航', department: '技术部'}
    respond_to do |format|
      format.html
      format.json do
        render json: {status: 0, errorMessage: '', result: loginResult}
      end
    end
  end
end
