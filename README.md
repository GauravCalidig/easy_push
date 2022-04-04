# Easy Push Package

This package gives you easy navigation with beautiful transitions


[![flutter platform](https://img.shields.io/badge/Platform-Flutter-yellow.svg)](https://flutter.io)
[![pub package](https://img.shields.io/pub/v/page_transition.svg)](https://pub.dartlang.org/packages/page_transition)
[![BSD-2-Clause](https://img.shields.io/badge/BSD-2-Clause.svg?style=flat-square)](https://opensource.org/licenses/)

## Demo



## Usage

It is really easy to use!
You should ensure that you add the `easy_push` as a dependency in your flutter project.

```yaml
dependencies:
  easy_push: ^0.0.3 


Than you can use it with below examples.

Push.to(Home(), context);

Push.to(Home(), context, transitionType: Transition.fadeIn);

```

## Usage for predefined routes

First, define the `onGenerateRoute` property in the `MaterialApp` widget like below and in switch cases you can transition to your new routes:

```dart
  onGenerateRoute: (settings) {
    switch (settings.name) {
      case '/second':
        return PageTransition(child: SecondPage(), type: PageTransitionType.scale);
        break;
      default:
        return null;
    }
  },
```
After that you can use your new route like this:

```dart
Push.toNamed( '/second',context);
```


### Usage predefined routes with RouteSettings

First, define the `onGenerateRoute` property in the `MaterialApp`   widget like below and in switch cases you can transition to your new routes:

```dart
   onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/second':
            return PageTransition(
              child: SecondPage(),
              type: PageTransitionType.scale,
              settings: settings,
            );
            break;
          default:
            return null;
        }
      },
```

After that you can use your new route like this:

```dart
Push.toNamed( '/second', context,arguments: "arguments data");
```
for more detail you can look example project.


## Types of transitions

- fade
- rightToLeft
- leftToRight
- topToBottom
- bottomToTop
- scale (with alignment)
- rotate (with alignment)
- size (with alignment)
- rightToLeftWithFade,
- leftToRightWithFade,
- leftToRightJoined,
- rightToLeftJoined,

## Curves

You can use any type of CurvedAnimation [curves](https://docs.flutter.io/flutter/animation/Curves-class.html).

## Alignments

You can use size, scale and rotate transform [alignment](https://docs.flutter.io/flutter/painting/Alignment-class.html)

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[BSD 2-Clause](https://opensource.org/licenses/BSD-2-Clause)

