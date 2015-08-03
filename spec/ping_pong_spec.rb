require('rspec')
require('ping_pong')
require('pry')

describe('Fixnum#ping_pong') do
  it("counts from 1 to a given number") do
    expect((2).ping_pong()).to(eq([1, 2]))
  end
  it("counts multiples of 3 as ping") do
    expect((4).ping_pong()).to(eq([1, 2, "ping", 4]))
  end
  it("counts multiples of 5 as pong") do
    expect((5).ping_pong()).to(eq([1,2,"ping",4,"pong"]))
  end
  it("counts as multiples of both 3 and 5 as ping-pong") do
    expect((15).ping_pong()).to(eq([1, 2, "ping", 4, "pong", "ping", 7, 8, "ping", "pong", 11, "ping", 13, 14, "ping-pong"]))
  end
end
