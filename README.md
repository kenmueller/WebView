# WebView

> The missing WebView in SwiftUI

## Download

- File -> Swift Packages -> Add Package Dependency...
- Select your project
- Enter `https://github.com/kenmueller/WebView` for the package repository URL
- Select **Branch**: master
- Click **Finish**

## Parameters

- `html: String`
- `baseURL: URL? = nil`
- `allowsBackForwardNavigationGestures: Bool = false`
- `allowsLinkPreview: Bool = true`
- `configuration: WKWebViewConfiguration? = nil`

## Example

```swift
import WebView

WebView(html: """
	<!DOCTYPE html>
	<html>
		<body>
        	<h1>I am a header</h1>
            <p>I am some paragraph text</p>
        </body>
	</html>
""")
```
