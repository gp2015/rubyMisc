require 'json'

my_hash = {'name' => 'George', 'age' => '26', 'state' => 'Florida'}
my_hash['movies'] = {'like' => ['blade runner', 'alien']}

my_hash['movies'].merge! 'dislike' => ['the happening', 'devil', 'star wars prequels']

my_hash['music'] = {'albums' => ['american beauty', 'wrestling moves', 'kylesa']}
my_hash['music'].merge! 'artists' => ['native', 'american football', 'pink floyd', 'dead prez', 'kylesa', 'earth']
puts my_hash
# puts my_hash.to_json
puts JSON.pretty_generate(my_hash)

puts "==========="

my_data = {
  'name' => 'George',
  'age' => 26,
  'state' => 'Florida',
  'movies' => {
    'likes' => {
      'directors' => {
      },
      'titles' => {
      }
    },
    'dislikes' => {
      'directors' => {
      },
      'titles' => {
      }
    }
  },
  'music' => {
    'likes' => {
      'artists' => {
      },
      'albums' => {
      }
    },
    'dislikes' => {
      'artists' => {
      },
      'albums' => {
      }
    }
  }
}

puts JSON.pretty_generate(my_data)
