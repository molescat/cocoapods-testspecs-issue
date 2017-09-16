#
# Be sure to run `pod lib lint SomeCoolStuff.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SomeCoolStuff'
  s.version          = '0.1.0'
  s.summary          = 'A short description of SomeCoolStuff.'
  s.description      = 'Add long description of the pod here.'

  s.homepage         = 'https://github.com/Myles Abbott/SomeCoolStuff'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Myles Abbott' => 'myles.abbott@rea-group.com' }
  s.source           = { :path => '.'}

  s.ios.deployment_target = '8.0'

  s.source_files = 'SomeCoolStuff/Classes/**/*'

  s.test_spec 'Tests' do |t|
    t.source_files = 'Example/Tests/*.swift'
    # I think there is a bug in cocoapods
    # These subspec dependencies will impact the user of this test_spec
    # and literally remove them from your parent project for all targets.
    t.dependency 'Nimble', '7.0.1'
    t.dependency 'Quick', '1.1.0'
  end

end
