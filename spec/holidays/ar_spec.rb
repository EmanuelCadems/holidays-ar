RSpec.describe Holidays::Ar do
  it "has a version number" do
    expect(Holidays::Ar::VERSION).not_to be nil
  end

  it "returns all argentinian holidays in specific year" do
    holidays = %w(2018-01-01 2018-02-12 2018-02-13 2018-03-24 2018-03-30
                  2018-03-29 2018-03-31 2018-04-02 2018-04-01 2018-04-05
                  2018-04-06 2018-04-07 2018-04-24 2018-04-30 2018-05-01
                  2018-05-25 2018-06-20 2018-06-15 2018-06-17 2018-07-09
                  2018-08-21 2018-08-20 2018-09-09 2018-09-10 2018-09-11
                  2018-09-18 2018-09-19 2018-10-15 2018-11-19 2018-12-08
                  2018-12-25 2018-12-24 2018-12-31)

    holidays.map! {|holiday| Date.strptime(holiday, '%Y-%m-%d') }

    l = Holidays::Ar::Loader.new(2018)
    expect(l.exec).to eq(holidays)
  end
end
