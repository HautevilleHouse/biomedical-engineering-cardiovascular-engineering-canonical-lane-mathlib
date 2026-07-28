import BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean.CardiovascularCompartment

namespace HautevilleHouse
namespace BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean

structure DiagnosticInferencePackage (C : CompartmentModelPackage) where
  sensitivity : Prop
  specificity : Prop
  diagnosticAccuracy : Prop

structure DiagnosticInferenceEvidence (C : CompartmentModelPackage) (D : DiagnosticInferencePackage C) where
  sensitivityClosed : D.sensitivity
  specificityClosed : D.specificity
  diagnosticAccuracyClosed : D.diagnosticAccuracy

def DiagnosticInferenceClosed (C : CompartmentModelPackage) (D : DiagnosticInferencePackage C) : Prop :=
  D.sensitivity ∧ D.specificity ∧ D.diagnosticAccuracy

theorem diagnostic_inference_closed_from_evidence (C : CompartmentModelPackage) (D : DiagnosticInferencePackage C)
    (E : DiagnosticInferenceEvidence C D) : DiagnosticInferenceClosed C D := by
  exact And.intro E.sensitivityClosed (And.intro E.specificityClosed E.diagnosticAccuracyClosed)

structure SurvivalAnalysisPackage (C : CompartmentModelPackage) where
  hazardFunction : Prop
  survivalCurve : Prop
  censoringHandled : Prop

structure SurvivalAnalysisEvidence (C : CompartmentModelPackage) (S : SurvivalAnalysisPackage C) where
  hazardFunctionClosed : S.hazardFunction
  survivalCurveClosed : S.survivalCurve
  censoringHandledClosed : S.censoringHandled

def SurvivalAnalysisClosed (C : CompartmentModelPackage) (S : SurvivalAnalysisPackage C) : Prop :=
  S.hazardFunction ∧ S.survivalCurve ∧ S.censoringHandled

theorem survival_analysis_closed_from_evidence (C : CompartmentModelPackage) (S : SurvivalAnalysisPackage C)
    (E : SurvivalAnalysisEvidence C S) : SurvivalAnalysisClosed C S := by
  exact And.intro E.hazardFunctionClosed (And.intro E.survivalCurveClosed E.censoringHandledClosed)

end BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean
end HautevilleHouse
