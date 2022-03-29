# All years divisible by 400 ARE leap years (e.g. 2000 was a leap year)
# All years divisible by 100 but not by 400 are NOT leap years (e.g. 1700, 1800 and 1900 were not leap years)
# All years divisible by 4 and not by 100 ARE leap years (e.g. 2004, 2008 and 2012 were leap years)
# All years not divisible by 4 are NOT leap years (e.g. 2009, 2010 and 2011 were not leap years)

require_relative '../lib/leap_year.rb'

describe '#leap_year' do
  it 'is divisible by 400' do
    year = 2000
    expect(leap_year(year)).to be true
  end

  it 'is divisible by 4 and not by 100' do
    year = 2004
    expect(leap_year(year)).to be true
  end
end

describe '#not_leap_year' do
  it 'is divisible by 100 but not by 400' do
    year = 1700
    expect(leap_year(year)).to be false
  end

  it 'is divisible by 4' do
    year = 2009
    expect(leap_year(year)).to be false
  end
end
