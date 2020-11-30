# VitaleSDK

[![CI Status](https://img.shields.io/travis/Miguel/VitaleSDK.svg?style=flat)](https://travis-ci.org/Miguel/VitaleSDK)
[![Version](https://img.shields.io/cocoapods/v/VitaleSDK.svg?style=flat)](https://cocoapods.org/pods/VitaleSDK)
[![License](https://img.shields.io/cocoapods/l/VitaleSDK.svg?style=flat)](https://cocoapods.org/pods/VitaleSDK)
[![Platform](https://img.shields.io/cocoapods/p/VitaleSDK.svg?style=flat)](https://cocoapods.org/pods/VitaleSDK)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

VitaleSDK is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'VitaleSDK'
```

## Usage

### Simple 1-line setup

Utiliza las credenciales de MyVitale para inicializar el SDK. El user_id debe ser único y permanente para cada usuario de la app (puedes utilizar un identifacador que ya estés usando en tu sistema).

```swift
Training.sharedInstance.start(with: user_id, clientId: client_id, clientSecret: client_secret)

```

### Sport profile

```swift
Training.sharedInstance.showSportProfile()

```

### Intelligent trainer


```swift
Training.sharedInstance.showVirtualPT()

```

### Custom configuration
Puedes personalizar varios elementos de la interfaz del módulo de entrenamiento con las siguientes funciones.


#### Primary color

Puedes personalizar el color principal del SDK. Todos los botones y elementos principales del modulo de entrenamiento usarán este color.

```swift
Training.sharedInstance.start(with: user_id, clientId: client_id, clientSecret: client_secret)

```

#### Navigation bar background color

Personaliza el color de fondo de la navigationBar del módulo de entrenamiento. 

```swift
Training.sharedInstance.start(with: user_id, clientId: client_id, clientSecret: client_secret)

```

#### Navigation bar background color

Personaliza el tint color de la navigationBar del módulo de entrenamiento.

```swift
Training.sharedInstance.start(with: user_id, clientId: client_id, clientSecret: client_secret)

```

#### Navigation bar logo

Añade el logo de tu app al navigationBar.

```swift
Training.sharedInstance.start(with: user_id, clientId: client_id, clientSecret: client_secret)

```


## Author

Miguel, miguel.munoz@lolaturtle.com

## License

VitaleSDK is available under the MIT license. See the LICENSE file for more info.
