# 一覧ページから詳細ページのリンクを取得する
# URLにアクセスするためのライブラリの読み込み
require 'open-uri'
# Nokogiriライブラリの読み込み
require 'nokogiri'

class Listpage < ActiveRecord::Base

  def extract_detail_urls
    charset = nil

    html = open(url) do |f|
      charset = f.charset # 文字種別を取得
      f.read # htmlを読み込んで変数htmlに渡す
    end

      # htmlをパース(解析)してオブジェクトを作成
    doc = Nokogiri::HTML.parse(html, nil, charset)

      #一覧ページからすべての商品の詳細ページへのURLを取得する
    urls = doc.xpath('//div[@class="cfItem"]').map do |node|
      node.xpath('div[@class="deaitiBtn"]/a').attribute('href').value
    end
  end

end
