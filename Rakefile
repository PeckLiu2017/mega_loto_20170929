# 通过引用这个库，bundler 提供我们一些内置的任务来发布我们的gem。
require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

# 更新我们的 Rakefile 来包含一个 spec 任务并且设置为默认
# ￼￼然后可以直接在终端输入rake
task :default => :spec

task :console do
  exec "irb -r mega_loto_20170929 -I ./lib"
end
