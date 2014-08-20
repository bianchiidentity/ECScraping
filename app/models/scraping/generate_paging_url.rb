#先頭ページから指定した範囲のページURLを生成する

class App::Models::GeneratePagingUrl
  
  #getterとsetter
  attr_accessor :url
  #初期化
  def initialize
    @url = Listpage.all.first.url
  end

end
