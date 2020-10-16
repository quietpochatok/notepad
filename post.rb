class Post

  def initialize
    @created_at = Time.now
    @text = nil
  end

  def read_from_console
    # todo
  end

  def to_strings
    # todo
  end

  def save
    file = File.new(file_path, 'w:UTF-8')

    each.to_strings do |item|
      file.puts item
    end

    file.close
  end

  def file_path
    # current_path = __dir__

    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")
    return current_path = ("#{__dir__}/#{file_name}")
  end
end
