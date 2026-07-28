import canonicalLaneMathlib.AdmissibleClass
import AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean

structure SurvivalAnalysisPackage where
  kaplanMeierEstimator : Prop
  coxProportionalHazards : Prop
  logRankTest : Prop
  hazardRatio : Prop
  censoringMechanism : Prop

structure SurvivalAnalysisEvidence (S : SurvivalAnalysisPackage) where
  kaplanMeierEstimatorClosed : S.kaplanMeierEstimator
  coxProportionalHazardsClosed : S.coxProportionalHazards
  logRankTestClosed : S.logRankTest
  hazardRatioClosed : S.hazardRatio
  censoringMechanismClosed : S.censoringMechanism

def SurvivalAnalysisClosed (S : SurvivalAnalysisPackage) : Prop :=
  S.kaplanMeierEstimator ∧ S.coxProportionalHazards ∧ S.logRankTest ∧ S.hazardRatio ∧ S.censoringMechanism

theorem survival_analysis_closed_from_evidence (S : SurvivalAnalysisPackage) (E : SurvivalAnalysisEvidence S) :
    SurvivalAnalysisClosed S := by
  exact And.intro E.kaplanMeierEstimatorClosed (And.intro E.coxProportionalHazardsClosed (And.intro E.logRankTestClosed (And.intro E.hazardRatioClosed E.censoringMechanismClosed)))

end BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean
end HautevilleHouse