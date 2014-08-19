# URLにアクセスするためのライブラリの読み込み
require 'open-uri'
# Nokogiriライブラリの読み込み
require 'nokogiri'

# スクレイピング先のURL
url = ARGV[0]

p "引数にURLを指定してください" if url.nil?

charset = nil
html = open(url) do |f|
  charset = f.charset # 文字種別を取得
  f.read # htmlを読み込んで変数htmlに渡す
end

# htmlをパース(解析)してオブジェクトを作成
doc = Nokogiri::HTML.parse(html, nil, charset)

doc.xpath('//div[@class="cfItem"]').each do |node|
  # tilte
  print node.xpath('div[@class="title"]').inner_text

  print ","

  # price
  print node.xpath('p[@class="price"]').inner_text

  print ","

  # one line description
  p node.xpath('p[@class="pr"]').inner_text
end