require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

# if文を使用して続きを作成していきましょう。
# 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。
if memo_type == 1
    puts "拡張子を除いたファイル名を入力してください！"
    file_name = gets.chomp
    puts "メモしたい内容を記入してください！"
    puts "完了したらCtrl + Dを押します！"
    memo_contents = readlines
    CSV.open('#{file_name}.csv','w') do |contents_new|
 contents_new << memo_contents
end
elsif memo_type == 2
    puts "編集したいファイルを拡張子なしで入力してください！"
    file_name_edit = gets.chomp
    puts "編集したいメモの内容を記入してください！"
    puts "完了したらCtrl + Dを押します！"
    memo_contents_edit = readlines
    CSV.open('#{file_name_edit}.csv','w') do |contents_edit|
 contents_edit << memo_contents_edit
end
else
    puts "1か2を入力してください！"
end

    
    
    