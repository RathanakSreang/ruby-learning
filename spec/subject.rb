describe Array, "when first created" do
  it "should be empty" do
    subject.should eq([])
  end
end
describe Array, "with some elements" do
  subject { [1,2,3] }
  it "should have the prescribed elements" do
    subject.should == [1,2,3]
  end
end
describe Array do
  context "when first created" do
    it(:size) {should eq(0)}
  end
end
