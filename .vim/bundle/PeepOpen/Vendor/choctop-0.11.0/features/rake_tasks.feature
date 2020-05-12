Feature: Rake tasks are available to build and deploy Cocoa apps with Sparkle
  In order to reduce time and cost of deploying Sparkle-enabled Cocoa apps
  As a Cocoa developer or Cocoa application deployer
  I want rake tasks to build and deploy my Cocoa app

  Scenario: rake task to build Release of app
    Given a Cocoa app with choctop installed called "SampleApp"
    When I invoke task "rake build"
    Then folder "build/Release/SampleApp.app" is created

  Scenario: rake task to create dmg file of build
    Given a Cocoa app with choctop installed called "SampleApp"
    When I invoke task "rake dmg"
    Then file "appcast/build/SampleApp-0.1.0.dmg" is created

  Scenario: rake task to upload the appcast file to the server
    Given a Cocoa app with choctop installed called "SampleApp"
    And I invoke task "rake dmg feed"
    And ChocTop config is configured for local rsync
    When I invoke task "rake upload"
    Then remote file "my_feed.xml" is created
    Then remote file "SampleApp-0.1.0.dmg" is created
    Then remote file "SampleApp.dmg" is created
    Then remote file "index.php" is created
    
  Scenario: change the version number in the Info.plist
    Given a Cocoa app with choctop installed called "SampleApp"
    When I invoke task "rake version:set VERSION="1.2.3"" 
    Then current xcode project version is "1.2.3"
  
  