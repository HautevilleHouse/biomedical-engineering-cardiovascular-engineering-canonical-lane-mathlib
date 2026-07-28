import canonicalLaneMathlib.AdmissibleClass
import AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean

structure CompartmentModelPackage where
  centralCompartment : Prop
  peripheralCompartment : Prop
  absorptionRate : Prop
  eliminationRate : Prop
  volumeOfDistribution : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  centralCompartmentClosed : C.centralCompartment
  peripheralCompartmentClosed : C.peripheralCompartment
  absorptionRateClosed : C.absorptionRate
  eliminationRateClosed : C.eliminationRate
  volumeOfDistributionClosed : C.volumeOfDistribution

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.centralCompartment ∧ C.peripheralCompartment ∧ C.absorptionRate ∧ C.eliminationRate ∧ C.volumeOfDistribution

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage) (E : CompartmentModelEvidence C) :
    CompartmentModelClosed C := by
  exact And.intro E.centralCompartmentClosed (And.intro E.peripheralCompartmentClosed (And.intro E.absorptionRateClosed (And.intro E.eliminationRateClosed E.volumeOfDistributionClosed)))

end BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean
end HautevilleHouse