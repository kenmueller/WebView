# WebView

> The missing WebView in SwiftUI

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
