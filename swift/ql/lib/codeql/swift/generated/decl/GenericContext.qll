// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Db
import codeql.swift.elements.Element
import codeql.swift.elements.decl.GenericTypeParamDecl

class GenericContextBase extends Synth::TGenericContext, Element {
  GenericTypeParamDecl getImmediateGenericTypeParam(int index) {
    result =
      Synth::convertGenericTypeParamDeclFromDb(Synth::convertGenericContextToDb(this)
            .(Db::GenericContext)
            .getGenericTypeParam(index))
  }

  final GenericTypeParamDecl getGenericTypeParam(int index) {
    result = getImmediateGenericTypeParam(index).resolve()
  }

  final GenericTypeParamDecl getAGenericTypeParam() { result = getGenericTypeParam(_) }

  final int getNumberOfGenericTypeParams() { result = count(getAGenericTypeParam()) }
}
