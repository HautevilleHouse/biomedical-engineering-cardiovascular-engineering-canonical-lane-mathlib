import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean.CompartmentModel

namespace HautevilleHouse
namespace BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean

structure PharmacokineticModelPackage (C : CompartmentModelPackage) where
  absorptionType : Type
  distributionType : Type
  eliminationType : Type
  bioavailability : Prop
  halfLife : Prop
  clearance : Prop

def PharmacokineticModelClosed {C : CompartmentModelPackage} (P : PharmacokineticModelPackage C) : Prop :=
  P.bioavailability ∧ P.halfLife ∧ P.clearance

structure PharmacokineticModelEvidence {C : CompartmentModelPackage} (P : PharmacokineticModelPackage C) where
  bioavailabilityClosed : P.bioavailability
  halfLifeClosed : P.halfLife
  clearanceClosed : P.clearance

theorem pharmacokinetic_model_closed_from_evidence {C : CompartmentModelPackage} (P : PharmacokineticModelPackage C) (E : PharmacokineticModelEvidence P) : PharmacokineticModelClosed P :=
  And.intro E.bioavailabilityClosed (And.intro E.halfLifeClosed E.clearanceClosed)

end BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean
end HautevilleHouse