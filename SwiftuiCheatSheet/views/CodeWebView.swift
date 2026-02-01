import SwiftUI
import WebKit

struct CodeWebView: UIViewRepresentable {
    let code: String
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.isOpaque = false
        webView.backgroundColor = UIColor.clear
        webView.scrollView.backgroundColor = UIColor.clear
        return webView
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let htmlContent = createHTMLContent(code: code)
        webView.loadHTMLString(htmlContent, baseURL: nil)
    }
    
    private func createHTMLContent(code: String) -> String {
        let escapedCode = code
            .replacingOccurrences(of: "&", with: "&amp;")
            .replacingOccurrences(of: "<", with: "&lt;")
            .replacingOccurrences(of: ">", with: "&gt;")
            .replacingOccurrences(of: "\"", with: "&quot;")
            .replacingOccurrences(of: "'", with: "&#39;")
            .replacingOccurrences(of: "\\", with: "&#92;")
        
        return """
        <!DOCTYPE html>
        <html>
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/prism/1.29.0/themes/prism.min.css">
            <style>
                body { 
                    margin: 0; 
                    padding: 0; 
                    background: transparent; 
                    font-size: 12px;
                    font-family: 'SF Mono', 'Monaco', 'Inconsolata', 'Roboto Mono', 'Source Code Pro', monospace;
                }
                pre { 
                    margin: 0; 
                    background: white; 
                    border-radius: 6px; 
                    font-size: 12px;
                    width: 100%;
                    box-sizing: border-box;
                }
                code {
                    font-size: 12px;
                    line-height: 1.2;
                    font-weight: 400;
                }
                .token {
                    font-size: 12px;
                    font-weight: 500;
                }
                .token.keyword {
                    color: #d73a49;
                    font-weight: 600;
                }
                .token.string {
                    color: #032f62;
                    font-weight: 500;
                }
                .token.comment {
                    color: #6a737d;
                    font-style: italic;
                }
                .token.function {
                    color: #6f42c1;
                    font-weight: 600;
                }
                .token.class-name {
                    color: #6f42c1;
                    font-weight: 600;
                }
                .token.property {
                    color: #005cc5;
                    font-weight: 500;
                }
                .token.number {
                    color: #005cc5;
                    font-weight: 500;
                }
                .token.operator {
                    color: #d73a49;
                    font-weight: 500;
                }
                .token.punctuation {
                    color: #24292e;
                    font-weight: 500;
                }
            </style>
        </head>
        <body>
            <pre><code class="language-swift">\(escapedCode)</code></pre>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.29.0/components/prism-core.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.29.0/components/prism-swift.min.js"></script>
        </body>
        </html>
        """
    }
}

#Preview {
    CodeWebView(code: """
    import SwiftUI

    struct ContentView: View {
        @State private var text = "Hello, World!"
        @State private var count = 0
        
        var body: some View {
            VStack(spacing: 20) {
                Text(text)
                    .font(.title)
                    .foregroundColor(.blue)
                
                Text("Count: \\(count)")
                    .font(.headline)
                
                Button("Tap me") {
                    count += 1
                    text = "Button tapped \\(count) times!"
                }
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
            .padding()
        }
    }
    
    #Preview {
        ContentView()
    }
    """)
    .frame(height: 400)
} 
