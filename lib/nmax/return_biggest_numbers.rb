module Nmax
  class Error < StandardError; end

  def self.return_biggest_numbers(amount = ARGV[0].to_i)
    raise IOError, 'No input info' if STDIN.tty?
    raise ArgumentError, 'Wrong amount of numbers' unless amount > 0

    numbers = []

    while ! STDIN.eof?
      numbers.push STDIN.readline.split(/[^0-9]/).reject{|cell| cell == ''}
    end

    numbers.flatten.map(&:to_i).sort.reverse.first(amount)
  end
end
