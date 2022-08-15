// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Db
import codeql.swift.elements.stmt.LabeledStmt
import codeql.swift.elements.stmt.StmtCondition

class LabeledConditionalStmtBase extends Synth::TLabeledConditionalStmt, LabeledStmt {
  StmtCondition getImmediateCondition() {
    result =
      Synth::convertStmtConditionFromDb(Synth::convertLabeledConditionalStmtToDb(this)
            .(Db::LabeledConditionalStmt)
            .getCondition())
  }

  final StmtCondition getCondition() { result = getImmediateCondition().resolve() }
}
