#
# Be sure to run `pod lib lint SomeCoolStuff.podspec' to ensure this is a
# valid spec before submitting.
#

Pod::Spec.new do |s|
  s.name             = 'SomeCoolStuff'
  s.version          = '0.1.0'
  s.summary          = 'CocoaPods testspecs issue - test rig SomeCoolStuff.'
  s.description      = 'Test rig to examine the test_spec dependency issue for users of a framework that specifies dependencies, when the pod is used locally.'

  s.homepage         = 'https://github.com/molescat'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Myles Abbott' => 'myles.abbott@rea-group.com' }
  s.source           = { :path => '.'}
  s.source_files = 'SomeCoolStuff/Classes/**/*'

  s.ios.deployment_target = '8.0'

  s.test_spec 'Tests' do |t|
    t.source_files = 'Example/Tests/*.swift'
    # I think there is a bug in cocoapods
    # These subspec dependencies will impact the user of this test_spec
    # and literally remove them from your parent project for all targets.
    t.dependency 'Nimble', '7.0.1'
    t.dependency 'Quick', '1.1.0'
  end

end
