class ApprovalController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def search
      respond_to do |format|
        format.html
        format.json do
          approvals = []
          index = params[:index].to_i
          pageSize = params[:pageSize].to_i
          Rails.logger.debug { "params[:index] = #{params[:index]}" }
          start = index * pageSize
          for i in 0...10 
            approvals.append({id: '11', keyword: "keyword#{start + i}", 
            type: 'typefsdf', reporter: '金军航fff', approvalObject: '测试', 
            amount: 1124.01, status: '待批', reportDate: '2016-03-31', approvalResult: '', type: 'test'})
          end
          render json: {status: 0, errorMessage: '', totalNumber: 50, approvals: approvals}
        end
      end
  end
  
  def audit 
    respond_to do |format|
      format.html
      format.json do
        render json: {status: 0, errorMessage: '', auditResult: {result: true, message: ''}}
      end
    end
  end
  
  
end
