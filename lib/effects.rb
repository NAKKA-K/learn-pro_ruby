module Effects
    def self.reverse
        ->(words) do
            words.split(' ').map(&:reverse).join(' ')
        end
    end

    def self.echo(rate)
        ->(words) do
            words.chars.map{ |word| word == ' ' ? word : word * rate }.join
        end
    end

    def self.loud(level)
        ->(words) do
            words.split(' ').map{ |word| word.upcase + '!' * level }.join(' ')
        end
    end
end