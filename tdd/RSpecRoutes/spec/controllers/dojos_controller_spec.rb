require 'rails_helper'

RSpec.describe DojosController, type: :controller do

  it '/dojos routes to index method' do
    expect(:get => '/dojos').to route_to(:controller => 'dojos', :action => 'index')
  end
  it '/dojos/hello routes to world method' do
    expect(:get => '/dojos/hello').to route_to(:controller => 'dojos', :action => 'world')
  end
  it '/dojos/ninjas routes to ninjas method' do
    expect(:get => '/dojos/ninjas').to route_to(:controller => 'dojos', :action => 'ninjas')
  end

end
