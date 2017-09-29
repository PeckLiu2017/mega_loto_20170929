require "mega_loto_20170929/version"
require "mega_loto_20170929/drawing"
# lib/mega_loto_20170929.rb 文件是加载其他代码到 gem 里的主要入口。
begin
  require "pry"
rescue LoadError
  # 宿主软件不一定需要 pry ，
  # 也不一定安装，
  # 所以 pry 缺失，
  # 不处理加载pry
end

module MegaLoto20170929
  # Your code goes here...
  # binding.pry
end
