import canonicalLaneMathlib.AdmissibleClass
import AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean

structure HemodynamicModelPackage where
  bloodPressure : Prop
  cardiacOutput : Prop
  vascularResistance : Prop
  pressureVolumeLoop : Prop

structure HemodynamicModelEvidence (H : HemodynamicModelPackage) where
  bloodPressureClosed : H.bloodPressure
  cardiacOutputClosed : H.cardiacOutput
  vascularResistanceClosed : H.vascularResistance
  pressureVolumeLoopClosed : H.pressureVolumeLoop

def HemodynamicModelClosed (H : HemodynamicModelPackage) : Prop :=
  H.bloodPressure ∧ H.cardiacOutput ∧ H.vascularResistance ∧ H.pressureVolumeLoop

theorem hemodynamic_model_closed_from_evidence (H : HemodynamicModelPackage) (E : HemodynamicModelEvidence H) :
    HemodynamicModelClosed H := by
  exact And.intro E.bloodPressureClosed (And.intro E.cardiacOutputClosed (And.intro E.vascularResistanceClosed E.pressureVolumeLoopClosed))

end BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean
end HautevilleHouse