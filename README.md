# FBMessengerTimeAgo

[![CI Status](http://img.shields.io/travis/rad182/FBMessengerTimeAgo.svg?style=flat)](https://travis-ci.org/rad182/FBMessengerTimeAgo)
[![Version](https://img.shields.io/cocoapods/v/FBMessengerTimeAgo.svg?style=flat)](http://cocoapods.org/pods/FBMessengerTimeAgo)
[![License](https://img.shields.io/cocoapods/l/FBMessengerTimeAgo.svg?style=flat)](http://cocoapods.org/pods/FBMessengerTimeAgo)
[![Platform](https://img.shields.io/cocoapods/p/FBMessengerTimeAgo.svg?style=flat)](http://cocoapods.org/pods/FBMessengerTimeAgo)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

+ Swift 2.3
+ iOS 8.0+

## Installation

FBMessengerTimeAgo is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "FBMessengerTimeAgo"
```

## Date Formats
```
Same day = "8:00 pm" // date time
<= 6 days = "Fri" // day
> 7 days and same year = "Oct 14" // month and day
> 1 year = "10/14/2015" // short date
```
## Usage
Import module
```swift
import FBMessengerTimeAgo
```
Call formattedTimeAgo() where date is a past date from now
```swift
date.formattedTimeAgo()
```

## Communication

- If you **found a bug**, open an issue.
- If you **have a feature request**, open an issue.
- If you **want to contribute**, submit a pull request.

## License

FBMessengerTimeAgo is available under the MIT license. See the LICENSE file for more info.
