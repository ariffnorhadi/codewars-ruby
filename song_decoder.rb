
def song_decoder(song)
  song.split('WUB').reject(&:empty?).join(' ')
end

# another solution

def song_decoder2(song)
  song.gsub(/(WUB)+/, ' ').strip
end