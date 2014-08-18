describe Idea do

  before(:each) { @idea = Idea.new(name: 'SampleIdea') }

  subject { @idea }

  it { should respond_to(:name) }

  it "#name returns a string" do
    expect(@idea.name).to match 'SampleIdea'
  end
end