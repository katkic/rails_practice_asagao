# db/seeds/developmentディレクトリのしたに「テーブル名.rb」があれば、
# それをrequireメソッドで実行する
# 本番モードでは、db/seeds/productionディレクトリの下のファイルを実行する

table_names = %w(members)
table_names.each do |table_name|
  path = Rails.root.join('db/seeds', Rails.env, table_name + '.rb')
  if File.exist?(path)
    puts "Creating #{table_name}"
    require path
  end
end
