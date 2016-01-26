class WordPlay

end
class String
  def sentences
    gsub(/\n|\r/, ' ').split(/\.\s*/)
  end
  def words
    scan(/\w[\w\'\-]*/)
  end
end

puts %q{Hello. This is a test of basic sentence splitting. It even works over multiple lines.}.sentences
puts "This is a test of words' capabilities".words
