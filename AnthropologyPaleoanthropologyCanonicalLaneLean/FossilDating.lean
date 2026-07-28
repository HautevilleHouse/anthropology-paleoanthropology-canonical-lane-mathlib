import AnthropologyPaleoanthropologyCanonicalLaneLean.PaleoPhylogeny

namespace HautevilleHouse
namespace AnthropologyPaleoanthropologyCanonicalLaneLean

structure FossilDatingPackage where
  radiometricDating : Prop
  stratigraphicContext : Prop
  dateConsistency : Prop

def FossilDatingClosed (D : FossilDatingPackage) : Prop :=
  D.radiometricDating ∧ D.stratigraphicContext ∧ D.dateConsistency

structure FossilDatingEvidence (D : FossilDatingPackage) where
  radiometricDatingClosed : D.radiometricDating
  stratigraphicContextClosed : D.stratigraphicContext
  dateConsistencyClosed : D.dateConsistency

theorem fossil_dating_closed_from_evidence (D : FossilDatingPackage)
    (E : FossilDatingEvidence D) : FossilDatingClosed D := by
  exact And.intro E.radiometricDatingClosed
    (And.intro E.stratigraphicContextClosed E.dateConsistencyClosed)

end AnthropologyPaleoanthropologyCanonicalLaneLean
end HautevilleHouse