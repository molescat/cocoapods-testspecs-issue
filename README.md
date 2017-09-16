# cocoapods-testspecs-issue
Test rig to illustrate issue with cocoapod lib podspec testspec dependancy issue.

* Tested with Xcode9 GM


## Step 1: Install Dependencies for App

Now you can install the dependencies in your project:

```
$ pod install
```


If you want to examine the "framework" (SomeCoolStuff) you will also need to install the dependancies for the Example App.

## Step 2: Install Dependencies For framework Example A

```
$ cd modules/SomeCoolStuff/Example/
$ pod install
```

## Step 3: Check the framework works

open `SomeCoolStuff.xcworkspace`

Run the App, and execute the UnitTests - all should work


## Step 4: Now Check the App

open `MyApp.xcworkspace`

Run the App, that should work.

Try to execute the unit tests - that should fail to compile, which is the issue.

```
MyAppTests.swift:3:8: error: no such module 'Quick'
import Quick
```
