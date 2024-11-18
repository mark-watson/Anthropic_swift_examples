    import XCTest
    import AnthropicSwiftSDK


    final class Anthropic_swift_examplesTests: XCTestCase {
        let text1 = "If Mary is 42, Bill is 27, and Sam is 51, what are their pairwise age differences. Please be concise."
        func testExample() async throws {
            let key = ProcessInfo.processInfo.environment["ANTHROPIC_API_KEY"]!
            let anthropic = Anthropic(apiKey: key)
            let message = Message(role: .user,
                                  content: [.text(text1)])
            let response =
              try await anthropic.messages.createMessage([message],
                                                         maxTokens: 1024)
            print(response)
            for content in response.content {
             switch content {
             case .text(let text, _):
                print("Assistant's response: \(text)")
             case .image(let imageContent, _):
                print("imageContent: \(imageContent)")
                break
             case .document(let documentContent, _):
                print("documentContent: \(documentContent)")
                break
             case .toolResult(let toolResult):
                print("toolResult: \(toolResult)")
                break
             case .toolUse(let toolUse):
                print("toolUse: \(toolUse)")
                break
             }
            }
            print(response.content)
            for content in response.content {
            if case let .text(text, _) = content {
                print("Assistant's response: \(text)")
            }
        }
        }
    }
