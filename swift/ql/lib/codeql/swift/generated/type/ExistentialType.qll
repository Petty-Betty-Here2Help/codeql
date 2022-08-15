// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Db
import codeql.swift.elements.type.Type

class ExistentialTypeBase extends Synth::TExistentialType, Type {
  override string getAPrimaryQlClass() { result = "ExistentialType" }

  Type getImmediateConstraint() {
    result =
      Synth::convertTypeFromDb(Synth::convertExistentialTypeToDb(this)
            .(Db::ExistentialType)
            .getConstraint())
  }

  final Type getConstraint() { result = getImmediateConstraint().resolve() }
}
