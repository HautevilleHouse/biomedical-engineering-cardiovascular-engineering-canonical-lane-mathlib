import BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean.HemodynamicsPDE

namespace HautevilleHouse
namespace BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean

structure CompartmentModelPackage (H : HemodynamicsPDEPackage) where
  compartments : Nat
  rateConstants : H.vesselGeometry → H.vesselGeometry → Prop
  massBalance : Prop
  eliminationRate : Prop
  volumeOfDistribution : Prop

structure CompartmentModelEvidence {H : HemodynamicsPDEPackage} (M : CompartmentModelPackage H) where
  massBalanceClosed : M.massBalance
  eliminationRateClosed : M.eliminationRate
  volumeOfDistributionClosed : M.volumeOfDistribution

def CompartmentModelClosed {H : HemodynamicsPDEPackage} (M : CompartmentModelPackage H) : Prop :=
  M.massBalance ∧ M.eliminationRate ∧ M.volumeOfDistribution

theorem compartment_model_closed_from_evidence
    {H : HemodynamicsPDEPackage} (M : CompartmentModelPackage H)
    (E : CompartmentModelEvidence M) : CompartmentModelClosed M := by
  exact And.intro E.massBalanceClosed
    (And.intro E.eliminationRateClosed E.volumeOfDistributionClosed)

end BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean
end HautevilleHouse