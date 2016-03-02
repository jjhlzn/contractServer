class ApprovalController < ApplicationController
  def search
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
            type: 'type', reporter: '金军航', approvalObject: '测试', 
            amount: 1124.01, reportDate: '2016-03-31'})
          end
          render json: {status: 0, errorMessage: '', totalNumber: 40, approvals: approvals}
        end
      end
    end
  end
end
