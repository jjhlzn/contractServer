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
  
  def getBasicInfo 
    respond_to do |format|
      format.html
      format.json do
        render json: {status: 0, errorMessage: '', basicInfo: {timeLimit: '2015-03-03', startPort: '横店',
          destPort: '香港', getMoneyType: 'test', priceRule: 'dffdfdf'}}
      end
    end
  end
  
  def getPurchaseInfo 
    respond_to do |format|
      format.html
      format.json do
        items = []
        for i in 0...5 
          items.append({
            contract: 'afbd1234', date: '2016-03-03', factory: '中国移动', amount: 200.01
          })
        end
        render json: {status: 0, errorMessage: '', purchaseInfo: {items: items}}
      end
    end
  end
  
  def getChuyunInfo
    respond_to do |format|
      format.html
      format.json do
        render json: {status: 0, errorMessage: '', chuyunInfo: {detailNo: 'fsfdsfdsf123213',
          date: '2016-03-06', amount: 200.98}}
      end
    end
  end
  
  def getFukuangInfo 
    respond_to do |format|
      format.html
      format.json do
        items = []
        for i in 0...5 
          items.append({
            contract: 'afbd1234', date: '2016-03-03', factory: '中国移动', amount: 200.01
          })
        end
        render json: {status: 0, errorMessage: '', fukuangInfo: {items: items}}
      end
    end
  end
  
  def getShouhuiInfo
    respond_to do |format|
      format.html
      format.json do
        render json: {status: 0, errorMessage: '', shouhuiInfo: {date: '2016-03-06',
          amount: 200.98}}
      end
    end
  end
end
