# VitaleSDK

[![CI Status](https://img.shields.io/travis/Miguel/VitaleSDK.svg?style=flat)](https://travis-ci.org/Miguel/VitaleSDK)
[![Version](https://img.shields.io/cocoapods/v/VitaleSDK.svg?style=flat)](https://cocoapods.org/pods/VitaleSDK)
[![License](https://img.shields.io/cocoapods/l/VitaleSDK.svg?style=flat)](https://cocoapods.org/pods/VitaleSDK)
[![Platform](https://img.shields.io/cocoapods/p/VitaleSDK.svg?style=flat)](https://cocoapods.org/pods/VitaleSDK)

## Description
VitaleSDK is a comprehensive intelligent, automatic, and adaptive training framework programmed in
Swift for iOS and iPadOS. Is the most convenient way of integrating our physical activity training features
with any third party.

## Installation

VitaleSDK is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'VitaleSDK'
```

## Usage

### Simple 1-line setup

Utiliza las credenciales de MyVitale para inicializar el SDK. El user_id debe ser único y permanente para cada usuario de la app (puedes utilizar cualquier identifacador de usuario que ya estés usando en tu sistema).

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
Training.sharedInstance.setMainColor(color: mainColor)

```

#### Navigation bar background color

Personaliza el color de fondo de la navigationBar del módulo de entrenamiento. 

```swift
Training.sharedInstance.setNavigationBarColor(color: backgroundColor)

```

#### Navigation bar background color

Personaliza el tint color de la navigationBar del módulo de entrenamiento.

```swift
Training.sharedInstance.setNavigationTintColor(color: tintColor)

```

#### Navigation bar logo

Añade el logo de tu app al navigationBar.

```swift
Training.sharedInstance.setNavigationLogo(color: logo)

```


## Author

Miguel, miguel.munoz@lolaturtle.com

## License

VitaleSDK is available under the MIT license. See the LICENSE file for more info.
