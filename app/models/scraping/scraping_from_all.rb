# 一覧ページから詳細ページのリンクを取得する
# URLにアクセスするためのライブラリの読み込み
require 'open-uri'
# Nokogiriライブラリの読み込み
require 'nokogiri'

class Tasks::Scraping::ScrapingFromAll
# スクレイピング先のURL
  #getterとsetter
  attr_accessor :url
  #初期化
  def initialize
    @url = Listpage.all.first.url
  end


  def execute

    begin
      raise NilUrlError if @url.nil?

      charset = nil

      html = open(@url) do |f|
        charset = f.charset # 文字種別を取得
        f.read # htmlを読み込んで変数htmlに渡す
      end

      # htmlをパース(解析)してオブジェクトを作成
      doc = Nokogiri::HTML.parse(html, nil, charset)

      #一覧ページからすべての商品の詳細ページへのURLを取得する
      doc.xpath('//div[@class="cfItem"]').each do |node|
        p node.xpath('div[@class="deaitiBtn"]/a').attribute('href').value
      end
    rescue => e
      puts e.message
    end
  end
end

class ScrapingFromAll::NilUrlError < RuntimeError
  def message
    "引数にURLを指定してください"
  end
end


