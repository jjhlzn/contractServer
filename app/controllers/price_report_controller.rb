class PriceReportController < ApplicationController
  skip_before_filter :verify_authenticity_token
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
          orders.append({id: "bjdh12389000998877#{i}", date: "2016-06-02", 
          status: '新制', detailInfo: '电脑，椅子，手机，衣服', reporter: 'jjh'})
        end
        render json: {status: 0, errorMessage: '', totalNumber: 40, reports: orders}
      end
    end
  end
  
  def getPriceReport

        orders = []
        index = params[:index].to_i
        pageSize = params[:pageSize].to_i
        Rails.logger.debug { "params[:index] = #{params[:index]}" }
        start = index * pageSize
        for i in 0...5
          orders.append({id: 'bjdh12389000998877',name: 'test', specification: "xxxx", price: 200.0, moneyType: '$',
          englishName: 'apple'})
        end
        render json: {status: 0, errorMessage: '', totalNumber: 10, products: orders}

  end
  
  def searchProducts

        orders = []
        index = params[:index].to_i
        pageSize = params[:pageSize].to_i
        Rails.logger.debug { "params[:index] = #{params[:index]}" }
        start = index * pageSize
        for i in 0...5
          orders.append({id: 'bjdh12389000998877', name: 'test', specification: "xxxx", price: 200.0, moneyType: '$',
          englishName: 'apple'})
        end
        render json: {status: 0, errorMessage: '', totalNumber: 10, products: orders}

  end
  
  def submit 
    render json: {status: 0, errorMessage: '', report: {id: 'xxxxxxxxx', date: "2016-06-02", 
          status: '新制', detailInfo: '电脑'}}
  end
end
