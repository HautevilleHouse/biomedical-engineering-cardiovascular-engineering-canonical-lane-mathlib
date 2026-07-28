import BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean.CompartmentModel

/-!
# Pharmacokinetic Bridge Package
-/

namespace HautevilleHouse
namespace BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean

structure PharmacokineticBridgePackage {C : CompartmentModelPackage} where
  absorptionRate : ℝ
  eliminationRate : ℝ
  bioavailability : ℝ
  volumeDistribution : ℝ
  bloodLevelCurve : ℝ → ℝ
  curveMatchesData : Prop

structure PharmacokineticBridgeEvidence {C : CompartmentModelPackage}
    (P : PharmacokineticBridgePackage C) where
  curveMatchesDataClosed : P.curveMatchesData

def PharmacokineticBridgeClosed {C : CompartmentModelPackage}
    (P : PharmacokineticBridgePackage C) : Prop :=
  P.curveMatchesData

theorem pharmacokinetic_bridge_closed_from_evidence {C : CompartmentModelPackage}
    (P : PharmacokineticBridgePackage C) (E : PharmacokineticBridgeEvidence P) :
    PharmacokineticBridgeClosed P := by
  exact E.curveMatchesDataClosed

end BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean
end HautevilleHouse