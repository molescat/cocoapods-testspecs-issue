# cocoapods-testspecs-issue
Test rig to illustrate issue with cocoapod lib podspec testspec dependancy issue.

* Tested with Xcode9 GM


## Step 1: Install dependencies for App

Now you can install the dependencies for the project `MyApp`:

```
$ pod install
```


If you want to examine the "framework" (SomeCoolStuff) you will also need to install the dependancies for the Example App.

## Step 2: Install dependencies For framework Example

```
$ cd modules/SomeCoolStuff/Example/
$ pod install
```

## Step 3: Check the framework works

open `SomeCoolStuff.xcworkspace`

Run the `SomeCoolStuff-Example` target App
Run the UnitTests
- all should, compile and work as expected.
- Demonstrating the Quick and Nimble dependencies are correctly set up.


## Step 4: Now check the App `MyApp`

open `MyApp.xcworkspace`

Run the `MyApp` target App, that should work.

Try to execute the unit tests
- that should fail to compile, which is the *issue*.

```
MyAppTests.swift:3:8: error: no such module 'Quick'
import Quick
```

The dependancies for Quick and Nimble have somehow been affected by the framework's testspecs dependencies.
