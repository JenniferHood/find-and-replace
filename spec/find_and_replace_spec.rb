require('rspec')
require('find_and_replace')

describe("String#find_and_replace") do
  it('replaces a one word string with the second argument if the word equals the first argument') do
    expect('world'.find_and_replace('world', 'universe')).to(eq('universe'))
  end
end
