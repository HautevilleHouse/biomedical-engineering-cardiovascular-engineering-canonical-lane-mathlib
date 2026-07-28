import canonicalLaneMathlib.AdmissibleClass
import AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.hemodynamicParameters ∧ A.object.endpointEvent

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.diagnosticConclusion

end BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean
end HautevilleHouse