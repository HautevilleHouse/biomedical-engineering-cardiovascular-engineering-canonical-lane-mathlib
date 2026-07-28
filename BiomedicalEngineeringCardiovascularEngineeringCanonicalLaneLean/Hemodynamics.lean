import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean

structure HemodynamicState where
  bloodPressure : Float
  cardiacOutput : Float
  systemicVascularResistance : Float
  heartRate : Float
  strokeVolume : Float
  flowPressureRelation : Prop
  autoregulation : Prop

structure HemodynamicEvidence (H : HemodynamicState) where
  flowPressureRelationClosed : H.flowPressureRelation
  autoregulationClosed : H.autoregulation

def HemodynamicClosed (H : HemodynamicState) : Prop :=
  H.flowPressureRelation ∧ H.autoregulation

theorem hemodynamic_closed_from_evidence (H : HemodynamicState) (E : HemodynamicEvidence H) :
    HemodynamicClosed H := by
  exact And.intro E.flowPressureRelationClosed E.autoregulationClosed

end BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean
end HautevilleHouse