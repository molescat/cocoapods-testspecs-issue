platform :ios, '10.0'

target 'MyApp' do
  use_frameworks!

  # By adding testspecs here, this will mess things up,
  # such that MyApp's Unit Tests can no longer find Quick/Nimble
  pod 'SomeCoolStuff', :path => './modules/SomeCoolStuff', :testspecs => ['Tests']

  # Change it to this and it will work
  # pod 'SomeCoolStuff', :path => './modules/SomeCoolStuff'


  target 'MyAppTests' do
    inherit! :search_paths
    pod 'Quick', '1.1.0'
    pod 'Nimble', '7.0.1'
  end

end
