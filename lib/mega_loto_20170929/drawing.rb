module MegaLoto20170929
  class Drawing
    def draw
        6.times.map { single_draw }
    end

    private
    def single_draw
        rand(0...60)
    end
  end
end
