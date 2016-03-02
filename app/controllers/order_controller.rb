class OrderController < ApplicationController
  def search
    respond_to do |format|
      format.html
      format.json do
        orders = []
        index = params[:index].to_i
        pageSize = params[:pageSize].to_i
        Rails.logger.debug { "params[:index] = #{params[:index]}" }
        start = index * pageSize
        for i in 0...10 
          orders.append({id: '11', businessPerson: "金军#{start + i}", 
          contractNo: '122222222', orderNo: 'abcde', 
          amount: 1124.01, guestName: '中国移动'})
        end
        render json: {status: 0, errorMessage: '', totalNumber: 40, orders: orders}
      end
    end
  end
end
