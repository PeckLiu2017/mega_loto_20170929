# 一开始的两行把我们的 gem 的 lib 目录加入了 load path (ruby会寻找的额外库的path)。
# 这会允许我们从我们的宿主应用调用 "mega_lotto"并且让它正确的加载我们的gem。
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mega_loto_20170929/version"

Gem::Specification.new do |spec|
  spec.name          = "mega_loto_20170929"
  spec.version       = MegaLoto20170929::VERSION
  spec.authors       = ["PeckLiu"]
  spec.email         = ["xiaoyang20170204@gmail.com"]

  spec.summary       = %q{Write a short summary, because RubyGems requires one.}
  spec.description   = %q{Write a longer description or delete this line.}
  spec.homepage      = ""
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  # add_development_dependency — 定义一个开发环境依赖。
  # 当被用于生产环境或者当开发我们的宿主程序时，这些依赖不会被安装；
  # 只有在开发本地 gem 时才会被安装。
  # add_dependency — 定义在所有环境中都需要的依赖。
  # 由于我们不想强制让 rspec 被我们的宿主应用加载，
  # 我们使用 add_development_dependency 方法，而不是 add_dependency。
end
