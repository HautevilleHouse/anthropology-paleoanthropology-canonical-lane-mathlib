import HautevilleHouse.AnthropologyPaleoanthropologyCanonicalLaneLean.PaleoanthropologyAdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPaleoanthropologyCanonicalLaneLean

structure HomininFossilEvidencePackage where
  fossilRecord : Prop
  stratigraphicContext : Prop
  morphologicalDiagnosis : Prop
  radiometricDating : Prop

def HomininFossilEvidenceClosed (P : HomininFossilEvidencePackage) : Prop :=
  P.fossilRecord ∧ P.stratigraphicContext ∧ P.morphologicalDiagnosis ∧ P.radiometricDating

structure HomininFossilEvidence (P : HomininFossilEvidencePackage) where
  fossilRecordClosed : P.fossilRecord
  stratigraphicContextClosed : P.stratigraphicContext
  morphologicalDiagnosisClosed : P.morphologicalDiagnosis
  radiometricDatingClosed : P.radiometricDating

theorem hominin_fossil_evidence_closed_from_evidence
    (P : HomininFossilEvidencePackage) (E : HomininFossilEvidence P) :
    HomininFossilEvidenceClosed P := by
  exact And.intro E.fossilRecordClosed
    (And.intro E.stratigraphicContextClosed
      (And.intro E.morphologicalDiagnosisClosed E.radiometricDatingClosed))

end AnthropologyPaleoanthropologyCanonicalLaneLean
end HautevilleHouse