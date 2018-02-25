def to_hex(r, g, b)
    [r, g, b].inject('#') do |result, n|
        result + n.to_s(16).rjust(2, '0')
    end
end
