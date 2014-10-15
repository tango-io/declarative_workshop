require 'rspec'
require_relative 'solution'

describe "Pascal Triangle" do

  it "should solve the pascal treingle to the n-th level" do 
    expect(pascalsTriangle(4)).to eq([1,1,1,1,2,1,1,3,3,1])
  end
  
  it "should solve factorial of 10" do 
    expect(fact(10)).to eq(3628800)
  end
  
  it "should solve factorial of 0" do 
    expect(fact(0)).to eq(1)
  end
  
  it "should solve the combination of n=10 and k=2" do 
    expect(combination(10,2)).to eq(45)
  end
  
  it "should build a row of the pascal triangle" do
    expect(build_pascal_row(3)).to eq( [1,3,3,1] )
  end
  
  it "should solve combination of n=10 and k=2" do 
    expect(combination(2,1)).to eq(2)
  end
end


