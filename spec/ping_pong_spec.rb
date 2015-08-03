require('rspec')
require('ping_pong')
require('pry')

describe('Fixnum#ping_pong') do
  it("counts from 1 to a given number") do
    expect((1).ping_pong()).to(eq([1, 2]))
  end

end
