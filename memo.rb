require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

puts "1 or 2 を入力しenterを押してください"



flag_number = gets.to_i



if flag_number == 1

 puts "あなたが入力したのは#{flag_number}です"

 puts "新規でメモを作成します"

 puts "ファイル名を入力し、enterを押してください"

  

 new_name = gets.to_s.chomp

  

 puts"メモの内容を入力してください"

 puts"入力を完了する場合はCtrl+Dを押してください"

  

 memo_new = STDIN.read

  

 CSV.open("#{new_name}.csv","w")do |csv|

  csv << ["#{memo_new}"]

  

 end

  

elsif flag_number == 2

 puts "あなたが入力したのは#{flag_number}です。"

 puts "既存のメモを修正します。"

 puts "ファイル名を入力し、enterを押してください"

  

 file_name = gets.to_s.chomp

  

 puts"編集内容を入力してください"

 puts"入力を完了する場合はCtrl+Dを押してください"

  

 memo_edit = STDIN.read

  

 CSV.open("#{file_name}.csv","a")do |edit|

  edit << ["#{memo_edit}"]

   

 end



else 

 puts"エラーです。1 or 2 を入力しenterを押してください"

  

end

