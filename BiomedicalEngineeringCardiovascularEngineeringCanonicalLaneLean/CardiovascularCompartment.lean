import BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean

structure CompartmentModelPackage where
  compartmentCount : Nat
  volumeDistributions : Prop
  rateConstants : Prop
  steadyStateCondition : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  compartmentCountClosed : C.compartmentCount = 2
  volumeDistributionsClosed : C.volumeDistributions
  rateConstantsClosed : C.rateConstants
  steadyStateConditionClosed : C.steadyStateCondition

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.compartmentCount = 2 ∧ C.volumeDistributions ∧ C.rateConstants ∧ C.steadyStateCondition

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage) (E : CompartmentModelEvidence C) :
    CompartmentModelClosed C := by
  exact And.intro E.compartmentCountClosed
    (And.intro E.volumeDistributionsClosed
      (And.intro E.rateConstantsClosed E.steadyStateConditionClosed))

end BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean
end HautevilleHouse
