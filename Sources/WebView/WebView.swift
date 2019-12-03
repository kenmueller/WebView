import SwiftUI
import WebKit

@available(iOS 13.0, *)
public struct WebView: UIViewRepresentable {
	private let html: String
	private let baseUrl: URL?
	private let allowsBackForwardNavigationGestures: Bool
	private let allowsLinkPreview: Bool
	private let configuration: WKWebViewConfiguration?
	
	public init(
		html: String,
		baseURL baseUrl: URL? = nil,
		allowsBackForwardNavigationGestures: Bool = false,
		allowsLinkPreview: Bool = true,
		configuration: WKWebViewConfiguration? = nil
	) {
		self.html = html
		self.baseUrl = baseUrl
		self.allowsBackForwardNavigationGestures = allowsBackForwardNavigationGestures
		self.allowsLinkPreview = allowsLinkPreview
		self.configuration = configuration
	}
	
	public func makeUIView(context: Context) -> WKWebView {
		if let configuration = configuration {
			return .init(frame: .zero, configuration: configuration)
		} else {
			return .init()
		}
	}
	
	public func updateUIView(_ webView: WKWebView, context: Context) {
		webView.loadHTMLString(html, baseURL: baseUrl)
		webView.allowsBackForwardNavigationGestures = allowsBackForwardNavigationGestures
		webView.allowsLinkPreview = allowsLinkPreview
	}
}
