import Foundation

public final class ScopePositionalMatchExpression {
    public let position: ScopeMatchPosition
    public let expression: ScopeMatchExpression
    
    public init(position: ScopeMatchPosition,
                expression: ScopeMatchExpression)
    {
        self.position = position
        self.expression = expression
    }
    
    public func match(path: ScopePath) -> Bool {
        return expression.match(path: path)
    }
}