// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Db
import codeql.swift.elements.AstNode
import codeql.swift.elements.stmt.ConditionElement

class StmtConditionBase extends Synth::TStmtCondition, AstNode {
  override string getAPrimaryQlClass() { result = "StmtCondition" }

  ConditionElement getImmediateElement(int index) {
    result =
      Synth::convertConditionElementFromDb(Synth::convertStmtConditionToDb(this)
            .(Db::StmtCondition)
            .getElement(index))
  }

  final ConditionElement getElement(int index) { result = getImmediateElement(index).resolve() }

  final ConditionElement getAnElement() { result = getElement(_) }

  final int getNumberOfElements() { result = count(getAnElement()) }
}
