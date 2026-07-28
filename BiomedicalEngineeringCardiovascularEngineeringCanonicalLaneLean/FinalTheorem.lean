import BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean.ClinicalInference

namespace HautevilleHouse
namespace BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.diagnosticEndpoint

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedCardiovascularClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cardiovascular_endgame (A : AdmissibleClass) :
    ConstrainedCardiovascularClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean
end HautevilleHouse
