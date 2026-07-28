import BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean.CompartmentModelEvidence

namespace HautevilleHouse
namespace BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean

structure DiagnosticInferenceCertificate {H : HemodynamicsPDEPackage} {M : CompartmentModelPackage H} where
  sensitivity : Prop
  specificity : Prop
  rocCurve : Prop
  diagnosticAccuracy : Prop
  sensitivityClosed : sensitivity
  specificityClosed : specificity
  rocCurveClosed : rocCurve
  diagnosticAccuracyClosed : diagnosticAccuracy
  compartmentEvidence : CompartmentModelEvidence M

def DiagnosticInferenceCertificateClosed {H : HemodynamicsPDEPackage} {M : CompartmentModelPackage H}
    (C : DiagnosticInferenceCertificate M) : Prop :=
  C.sensitivity ∧ C.specificity ∧ C.rocCurve ∧ C.diagnosticAccuracy ∧ CompartmentModelClosed M

theorem diagnostic_inference_certificate_closed
    {H : HemodynamicsPDEPackage} {M : CompartmentModelPackage H}
    (C : DiagnosticInferenceCertificate M) : DiagnosticInferenceCertificateClosed C := by
  exact And.intro C.sensitivityClosed
    (And.intro C.specificityClosed
      (And.intro C.rocCurveClosed
        (And.intro C.diagnosticAccuracyClosed
          (compartment_model_closed_from_evidence M C.compartmentEvidence))))

end BiomedicalEngineeringCardiovascularEngineeringCanonicalLaneLean
end HautevilleHouse