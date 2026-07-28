import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean

structure PharmacokineticPackage where
  absorptionRate : Float
  distributionVolume : Float
  eliminationRate : Float
  bioavailability : Float
  firstOrderKinetics : Prop
  doseProportional : Prop

structure PharmacokineticEvidence (P : PharmacokineticPackage) where
  firstOrderKineticsClosed : P.firstOrderKinetics
  doseProportionalClosed : P.doseProportional

def PharmacokineticClosed (P : PharmacokineticPackage) : Prop :=
  P.firstOrderKinetics ∧ P.doseProportional

theorem pharmacokinetic_closed_from_evidence (P : PharmacokineticPackage) (E : PharmacokineticEvidence P) :
    PharmacokineticClosed P := by
  exact And.intro E.firstOrderKineticsClosed E.doseProportionalClosed

end BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean
end HautevilleHouse