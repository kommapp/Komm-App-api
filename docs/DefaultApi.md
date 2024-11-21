# swagger.api.DefaultApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://gokomm.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**signin**](DefaultApi.md#signin) | **POST** /signin | 

# **signin**
> signin(body)



### Example
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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SigninBody**](SigninBody.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

