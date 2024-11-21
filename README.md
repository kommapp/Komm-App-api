# swagger
Komm App

This Dart package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 0.0.1
- Build package: io.swagger.codegen.v3.generators.dart.DartClientCodegen

## Requirements

Dart 1.20.0 or later OR Flutter 0.0.20 or later

## Installation & Usage

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```
name: swagger
version: 1.0.0
description: Swagger API client
dependencies:
  swagger:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
      version: 'any'
```

### Local
To use the package in your local drive, please include the following in pubspec.yaml
```
dependencies:
  swagger:
    path: /path/to/swagger
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:swagger/api.dart';

var api_instance = new DefaultApi();
var body = new SigninBody(); // SigninBody | 

try {
    api_instance.signin(body);
} catch (e) {
    print("Exception when calling DefaultApi->signin: $e\n");
}
```

## Documentation for API Endpoints

All URIs are relative to *https://gokomm.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DefaultApi* | [**signin**](docs//DefaultApi.md#signin) | **POST** /signin | 

## Documentation For Models

 - [SigninBody](docs//SigninBody.md)

## Documentation For Authorization

 All endpoints do not require authorization.


## Author


