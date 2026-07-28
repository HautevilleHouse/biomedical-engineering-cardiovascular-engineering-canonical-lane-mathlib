import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean

structure CardiovascularSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CardiovascularAdmittedObject where
  space : CardiovascularSpace
  closedCardiovascularSystem : Prop
  clinicalValidity : Prop
  endpointModel : Type
  endpointTopology : TopologicalSpace endpointModel
  diagnosticProcedure : Prop
  conclusion : diagnosticProcedure

structure CardiovascularEndgameState where
  object : CardiovascularAdmittedObject

def CardiovascularWitnessClosed (O : CardiovascularAdmittedObject) : Prop :=
  O.diagnosticProcedure

end BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean
end HautevilleHouse