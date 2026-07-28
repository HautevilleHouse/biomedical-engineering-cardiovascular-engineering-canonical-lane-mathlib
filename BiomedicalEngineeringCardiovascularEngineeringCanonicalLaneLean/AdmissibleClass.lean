import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean

structure CardiovascularAdmittedObject where
  patientModel : Type
  compartmentStructure : Prop
  pharmacokineticParameters : Prop
  diagnosticEndpoint : Prop
  conclusion : diagnosticEndpoint

structure AdmissibleClass where
  object : CardiovascularAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.diagnosticEndpoint) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean
end HautevilleHouse
