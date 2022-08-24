require "cat_facts"

RSpec.describe CatFacts do
  it "returns a fact" do
    fake_requester = double :requester
    allow(fake_requester).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{ "fact": "Cats have individual preferences for scratching surfaces and angles. Some are horizontal scratchers while others exercise their claws vertically.", "length": 145 }')
    cat_facts = CatFacts.new(fake_requester)
    expect(cat_facts.provide).to eq "Cat fact: Cats have individual preferences for scratching surfaces and angles. Some are horizontal scratchers while others exercise their claws vertically."
  end
end
