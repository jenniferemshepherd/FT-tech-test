def store_many_ratings
  9.times { rate(2) }
  2.times { rate(-1) }
  2.times { rate(0) }
  1.times { rate(-2) }
  7.times { rate(1) }
  click_button(1)
end

def rate(score)
  click_button(score)
  click_button('Return')
end
