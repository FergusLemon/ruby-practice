module CaesarCipher
  def self.encrypt(message)
    result = String.new
    message.each_char { |char|
      result << (char.ord + 3).chr
    }
    result
  end

  def self.decrypt(message)
    result = String.new
    message.each_char { |char|
      result << (char.ord - 3).chr
    }
    result
  end
end
