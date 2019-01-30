import Foundation

class DefaultHeader1Transformer: BaseMarkdownTransformer {
    override func attributedString(of string: String) -> NSAttributedString {
        let startIndex = string.index(after: string.startIndex)
        let endIndex = string.endIndex
        let content = String(string[startIndex..<endIndex]).trimmingCharacters(in: .whitespaces)
        return NSAttributedString(string: content, attributes: style.attributes(of: syntax))
    }
}
