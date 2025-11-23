import XCTest
import MLX
//@testable import HF_Transformers_swift_examples

final class HF_Transformers_swift_examplesTests: XCTestCase {
    
    // Test model loading
    func testModelLoading() async throws {
        let modelId = "pcuenq/Llama-2-7b-chat-coreml"
        let tokenizer = try await AutoTokenizer.from(pretrained: modelId)
        let model = try await LanguageModel.from(pretrained: modelId)
        
        XCTAssertNotNil(tokenizer)
        XCTAssertNotNil(model)
    }
    
    // Test text generation
    func testTextGeneration() async throws {
        let modelId = "pcuenq/Llama-2-7b-chat-coreml"
        let tokenizer = try await AutoTokenizer.from(pretrained: modelId)
        let model = try await LanguageModel.from(pretrained: modelId)
        
        let prompt = "Write a hello world message:"
        let config = GenerationConfig(
            maxLength: 50,
            temperature: 0.7,
            topK: 50
        )
        
        let output = try await model.generate(
            prompt: prompt,
            tokenizer: tokenizer,
            config: config
        )
        
        XCTAssertFalse(output.isEmpty)
        XCTAssert(output.count > prompt.count)
    }
    
    // Test generation config
    func testGenerationConfig() {
        let config = GenerationConfig(
            maxLength: 100,
            temperature: 0.7,
            topK: 50
        )
        
        XCTAssertEqual(config.maxLength, 100)
        XCTAssertEqual(config.temperature, 0.7)
        XCTAssertEqual(config.topK, 50)
    }
}