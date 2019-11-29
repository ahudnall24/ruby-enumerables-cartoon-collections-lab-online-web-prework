require "spec_helper"

describe "Cartoon Collections" do
  describe "#roll_call_dwarves" do
    it "prints out the 7 dwarfs in a numbered list" do
      dwarves = ["Dopey", "Grumpy", "Bashful","Sleepy"]

      output = capture_stdout do
        roll_call_dwarves(dwarves)
      end

      # This regex allows for arbitrary characters between
      # the numbering and the name
      expect(output).to match(/1.*Dopey/)
      expect(output).to match(/2.*Grumpy/)
      expect(output).to match(/3.*Bashful/)
      expect(output).to match(/4 *Sleepy/)
    end
    
    dwarves=[o,1,2,3,4].each_with_index { |val,index| puts "index: #{index} for #{val}" if val < 10}
  index: 0 for 10
  index: 1 for 4
  => [0,1,2,3,4]

  end

  describe "#summon_captain_planet" do
    it "returns an array with the same number of elements that it was given" do
      veggies = ["carrot", "cucumber", "pepper"]
      result = summon_captain_planet(veggies)
      expect(result.class).to eq(Array)
      expect(result.length).to eq(3)
    end

summon_captain_planet_calls= ["carrot", "cucumber", "pepper"]
  summon_captain_planet_calls(planet_calls)#=>[ ["carrot", "cucumber", "pepper"]]
   
   def summon_captain_planet_calls
     summon_captain_planet_calls(planet_calls[ ["carrot", "cucumber", "pepper"| ]).collect{|n|}
     #=> ["carrot", "cucumber", "pepper"]
   
    it "capitalizes each element and adds an exclamation mark (test 1)" do
      fruits = ["apple", "banana", "orange"]
      result = summon_captain_planet(fruits)
      ['Apple!', 'Banana!', 'Orange!'].each { |w| expect(result).to include w }
    end

    it "capitalizes each element and adds an exclamation mark (test 2)" do
      veggies = ["carrot", "cucumber", "pepper"]
      result = summon_captain_planet(veggies)
      ["Carrot!", "Cucumber!", "Pepper!"].each { |w| expect(result).to include w }
    end
  end

  describe "#long_planeteer_calls" do
    it "returns true if any calls are longer than 4 characters" do
      calls_long = [short_words = ["puff", "go", "two"]
long_planeteer_calls(short_words)
#=> false
 
assorted_words = ["two", "go", "industrious", "bop"]
long_planeteer_calls(assorted_words)
#=> true]
      expect(long_planeteer_calls(calls_long)).to eq(true)
    end
    
    short_words = [short_words = ["puff", "go", "two"]
long_planeteer_calls(short_words)
#=> false
 
assorted_words = ["two", "go", "industrious", "bop"]
long_planeteer_calls(assorted_words)
#=> true]
long_planeteer_calls(short_words)
#=> false
 
assorted_words = ["two", "go", "industrious", "bop"]
long_planeteer_calls(assorted_words)
#=> true

    it "returns false if all calls are 4 characters or less" do
      calls_short = ["wind", "fire", "tree", "axe", "code"]
      expect(long_planeteer_calls(calls_short)).to eq(false)
    end

  end

  describe "#find_the_cheese" do
    it "returns the first element of the array that is cheese" do
      contains_cheddar = ["banana", "cheddar", "sock"]
      expect(find_the_cheese(contains_cheddar)).to eq 'cheddar'

      contains_gouda = ["potato", "gouda", "camembert"]
      expect(find_the_cheese(contains_gouda)).to eq 'gouda'
    end

    it "returns nil if the array does not contain a type of cheese" do
      no_cheese = ["ham", "cellphone", "computer"]
      expect(find_the_cheese(no_cheese)).to eq nil
    end
  end
end
