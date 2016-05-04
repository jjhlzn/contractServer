class ProductController < ApplicationController
  #skip_before_action :verify_authenticity_token
  skip_before_filter :verify_authenticity_token
  def search
    respond_to do |format|
      format.html
      format.json do
        
        render json: {status: 0, errorMessage: '', isExist: true, 
          product: {chineseName: 'chineseName', 
                    englishName: 'englishName',
                    huohao: '货号',
                    xinghao: '型号',
                    chengbenPrice: 110.01,
                    sellPrice: 120.11,
                    chineseDesc: '这是中文描述',
                    englishDesc: '这是英文描述'
                    }}
      end
    end
  end
end
