
require 'torquebox/kernel'

describe TorqueBox::Kernel do

  it "should return nil lookup if registry unavailable" do
    TorqueBox::ServiceRegistry.service_registry = nil
    TorqueBox::Kernel.lookup('foo').should be_nil
  end

  it "should return value from registry" do
    @registry["foo"] = "bar"
    TorqueBox::Kernel.lookup("foo").should eql("bar")
  end

  it "should yield value from from block when registry contains key" do
    @registry["foo"] = "bar"
    TorqueBox::Kernel.lookup("foo") {|x| "baz" }.should eql("baz")
  end

  it "should defer block execution if registry unavailable" do
    TorqueBox::ServiceRegistry.service_registry = nil
    @registry["foo"] = "bar"
    TorqueBox::Kernel.lookup("foo") { |foo| @foo = foo }.should be_nil
    TorqueBox::Kernel.blocks.should_not be_empty
    @foo = nil
    TorqueBox::ServiceRegistry.service_registry = @service_registry
    TorqueBox::Kernel.blocks.should be_empty
    @foo.should eql("bar")
  end

  # Mock a JBoss ServiceRegistry backed by a simple member Hash,
  # @registry, that holds the fixtures for the tests.
  before(:each) do
    TorqueBox::ServiceRegistry.stub!(:service_name_for).and_return { |name| name }
    TorqueBox::ServiceRegistry.service_registry = nil
    @registry = {}
    @service_registry = mock("service_registry")
    @service_registry.stub!(:getService).and_return { |name|
      service = mock("service")
      service.stub!(:getValue).and_return(@registry[name])
      service
    }
    TorqueBox::ServiceRegistry.service_registry = @service_registry
  end

end
