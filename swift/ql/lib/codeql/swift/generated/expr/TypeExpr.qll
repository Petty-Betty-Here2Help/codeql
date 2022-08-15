// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Db
import codeql.swift.elements.expr.Expr
import codeql.swift.elements.type.TypeRepr

class TypeExprBase extends Synth::TTypeExpr, Expr {
  override string getAPrimaryQlClass() { result = "TypeExpr" }

  TypeRepr getImmediateTypeRepr() {
    result =
      Synth::convertTypeReprFromDb(Synth::convertTypeExprToDb(this).(Db::TypeExpr).getTypeRepr())
  }

  final TypeRepr getTypeRepr() { result = getImmediateTypeRepr().resolve() }

  final predicate hasTypeRepr() { exists(getTypeRepr()) }
}
