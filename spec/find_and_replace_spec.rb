require('rspec')
require('find_and_replace')

describe("String#find_and_replace") do
  it('replaces a one word string with the second argument if the word equals the first argument') do
    expect('world'.find_and_replace('world', 'universe')).to(eq('universe'))
  end

  it('does not replace the first word if it does not match the first argument') do
    expect('coffee'.find_and_replace('tea', 'milk')).to(eq('coffee'))
  end

  it('works on strings that has two words') do
    expect('the bird'.find_and_replace('bird', 'duck')).to(eq('the duck'))
  end
end
