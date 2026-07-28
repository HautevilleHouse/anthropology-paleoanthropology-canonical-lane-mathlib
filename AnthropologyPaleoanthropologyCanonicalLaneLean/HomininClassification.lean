import canonicalLaneMathlib.AdmissibleClass
import .PhylogeneticAnalysis
import .PaleoecologyContext

namespace HautevilleHouse
namespace AnthropologyPaleoanthropologyCanonicalLaneLean

structure HomininClassificationPackage {P : FossilEvidencePackage} {D : DatingMethodsPackage P} {A : PhylogeneticAnalysisPackage P} {C : PaleoecologyContextPackage P D} where
  speciesDesignation : Prop
  cladisticConsistency : Prop
  morphologicalDistinctiveness : Prop
  temporalContinuity : Prop

structure HomininClassificationEvidence {P : FossilEvidencePackage} {D : DatingMethodsPackage P} {A : PhylogeneticAnalysisPackage P} {C : PaleoecologyContextPackage P D} (H : HomininClassificationPackage P D A C) where
  speciesDesignationClosed : H.speciesDesignation
  cladisticConsistencyClosed : H.cladisticConsistency
  morphologicalDistinctivenessClosed : H.morphologicalDistinctiveness
  temporalContinuityClosed : H.temporalContinuity

def HomininClassificationClosed {P : FossilEvidencePackage} {D : DatingMethodsPackage P} {A : PhylogeneticAnalysisPackage P} {C : PaleoecologyContextPackage P D} (H : HomininClassificationPackage P D A C) : Prop :=
  H.speciesDesignation ∧ H.cladisticConsistency ∧ H.morphologicalDistinctiveness ∧ H.temporalContinuity

theorem hominin_classification_closed_from_evidence {P : FossilEvidencePackage} {D : DatingMethodsPackage P} {A : PhylogeneticAnalysisPackage P} {C : PaleoecologyContextPackage P D} (H : HomininClassificationPackage P D A C) (E : HomininClassificationEvidence H) : HomininClassificationClosed H := by
  exact And.intro E.speciesDesignationClosed (And.intro E.cladisticConsistencyClosed (And.intro E.morphologicalDistinctivenessClosed E.temporalContinuityClosed))

end AnthropologyPaleoanthropologyCanonicalLaneLean
end HautevilleHouse