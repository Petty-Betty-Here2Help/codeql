// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Db
import codeql.swift.elements.expr.ImplicitConversionExpr

class DestructureTupleExprBase extends Synth::TDestructureTupleExpr, ImplicitConversionExpr {
  override string getAPrimaryQlClass() { result = "DestructureTupleExpr" }
}
