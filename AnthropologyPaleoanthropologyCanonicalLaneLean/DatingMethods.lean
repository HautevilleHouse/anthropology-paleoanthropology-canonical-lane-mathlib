import canonicalLaneMathlib.AdmissibleClass
import .HomininFossilEvidence

namespace HautevilleHouse
namespace AnthropologyPaleoanthropologyCanonicalLaneLean

structure DatingMethodsPackage (P : FossilEvidencePackage) where
  radiometricDating : Prop
  stratigraphicCorrelation : Prop
  paleomagneticDating : Prop
  biostratigraphy : Prop

structure DatingMethodsEvidence {P : FossilEvidencePackage} (D : DatingMethodsPackage P) where
  radiometricDatingClosed : D.radiometricDating
  stratigraphicCorrelationClosed : D.stratigraphicCorrelation
  paleomagneticDatingClosed : D.paleomagneticDating
  biostratigraphyClosed : D.biostratigraphy

def DatingMethodsClosed {P : FossilEvidencePackage} (D : DatingMethodsPackage P) : Prop :=
  D.radiometricDating ∧ D.stratigraphicCorrelation ∧ D.paleomagneticDating ∧ D.biostratigraphy

theorem dating_methods_closed_from_evidence {P : FossilEvidencePackage} (D : DatingMethodsPackage P) (E : DatingMethodsEvidence D) : DatingMethodsClosed D := by
  exact And.intro E.radiometricDatingClosed (And.intro E.stratigraphicCorrelationClosed (And.intro E.paleomagneticDatingClosed E.biostratigraphyClosed))

end AnthropologyPaleoanthropologyCanonicalLaneLean
end HautevilleHouse