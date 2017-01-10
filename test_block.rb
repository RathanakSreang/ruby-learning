def test_methods
  yield
end

def methods1
  puts "Kimly"
end
test_methods {puts"Rathanak"}
test_methods {methods1}
test_methods