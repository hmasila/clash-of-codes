# A drone wants to send a message to a receiver In a high-interference area where data packets might be dropped.

# In order to ensure the message is received properly, the drone sends pieces of a message multiple times.

# Given a list of n received message fragments, piece together the original message.

# Some message fragments might still not be received, even though they were sent multiple times.
# In this case, the full message cannot be reconstructed and the output should be "CORRUPT" instead.


def reconstruct_message(fragments)
  message_parts = Hash.new(0)
  fragments.each do |fragment|
    count = fragment.scan(/^\d+ /)[0]
    puts fragment.split(count)[-1]
    message_parts[count.to_i] = fragment.split(count)[-1]
  end
  sorted = message_parts.sort.to_h
  puts sorted
  if sorted.size < sorted.keys.max
    return 'CORRUPT'
  else
    sorted.values.join
  end
end

fragments = ["8 !", "1  l", "3 n", "2 a", "6 n", '7 g', '4 d', '5 i']
puts reconstruct_message(fragments)

fragments = ["1 Cannot", "2  land", "1 Cannot", "1 Cannot", "2  land"]
puts reconstruct_message(fragments)
