import HautevilleHouse.AnthropologyPaleoanthropologyCanonicalLaneLean.HominidFossilEvidence

/-!
# Dating Method Package
-/

namespace HautevilleHouse
namespace AnthropologyPaleoanthropologyCanonicalLaneLean

structure DatingMethodPackage {F : HominidFossilEvidencePackage} where
  radiometricDating : Prop
  stratigraphicCorrelation : Prop
  paleomagneticDating : Prop
  luminescenceDating : Prop
  radiometricCalibrationError : Prop
  correlationConsistency : Prop

structure DatingMethodEvidence {F : HominidFossilEvidencePackage}
    (D : DatingMethodPackage F) where
  radiometricDatingClosed : D.radiometricDating
  stratigraphicCorrelationClosed : D.stratigraphicCorrelation
  paleomagneticDatingClosed : D.paleomagneticDating
  luminescenceDatingClosed : D.luminescenceDating
  radiometricCalibrationErrorClosed : D.radiometricCalibrationError
  correlationConsistencyClosed : D.correlationConsistency

def DatingMethodClosed {F : HominidFossilEvidencePackage}
    (D : DatingMethodPackage F) : Prop :=
  D.radiometricDating ∧ D.stratigraphicCorrelation ∧
  D.paleomagneticDating ∧ D.luminescenceDating ∧
  D.radiometricCalibrationError ∧ D.correlationConsistency

theorem dating_method_closed_from_evidence
    {F : HominidFossilEvidencePackage} (D : DatingMethodPackage F)
    (E : DatingMethodEvidence D) : DatingMethodClosed D := by
  exact And.intro E.radiometricDatingClosed
    (And.intro E.stratigraphicCorrelationClosed
      (And.intro E.paleomagneticDatingClosed
        (And.intro E.luminescenceDatingClosed
          (And.intro E.radiometricCalibrationErrorClosed
            E.correlationConsistencyClosed))))

end AnthropologyPaleoanthropologyCanonicalLaneLean
end HautevilleHouse