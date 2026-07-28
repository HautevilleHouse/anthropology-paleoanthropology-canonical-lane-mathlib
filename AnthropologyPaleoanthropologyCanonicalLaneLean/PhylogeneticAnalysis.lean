import HautevilleHouse.AnthropologyPaleoanthropologyCanonicalLaneLean.DatingMethodPackage

/-!
# Phylogenetic Analysis Package
-/

namespace HautevilleHouse
namespace AnthropologyPaleoanthropologyCanonicalLaneLean

structure PhylogeneticAnalysisPackage {F : HominidFossilEvidencePackage}
    {D : DatingMethodPackage F} where
  characterMatrix : Prop
  treeBuildingMethod : Prop
  parsimonyCriterion : Prop
  bootstrapSupport : Prop
  consensusTree : Prop
  homoplasyAssessment : Prop

structure PhylogeneticAnalysisEvidence {F : HominidFossilEvidencePackage}
    {D : DatingMethodPackage F} (P : PhylogeneticAnalysisPackage D) where
  characterMatrixClosed : P.characterMatrix
  treeBuildingMethodClosed : P.treeBuildingMethod
  parsimonyCriterionClosed : P.parsimonyCriterion
  bootstrapSupportClosed : P.bootstrapSupport
  consensusTreeClosed : P.consensusTree
  homoplasyAssessmentClosed : P.homoplasyAssessment

def PhylogeneticAnalysisClosed {F : HominidFossilEvidencePackage}
    {D : DatingMethodPackage F} (P : PhylogeneticAnalysisPackage D) : Prop :=
  P.characterMatrix ∧ P.treeBuildingMethod ∧ P.parsimonyCriterion ∧
  P.bootstrapSupport ∧ P.consensusTree ∧ P.homoplasyAssessment

theorem phylogenetic_analysis_closed_from_evidence
    {F : HominidFossilEvidencePackage} {D : DatingMethodPackage F}
    (P : PhylogeneticAnalysisPackage D) (E : PhylogeneticAnalysisEvidence P) :
    PhylogeneticAnalysisClosed P := by
  exact And.intro E.characterMatrixClosed
    (And.intro E.treeBuildingMethodClosed
      (And.intro E.parsimonyCriterionClosed
        (And.intro E.bootstrapSupportClosed
          (And.intro E.consensusTreeClosed E.homoplasyAssessmentClosed))))

end AnthropologyPaleoanthropologyCanonicalLaneLean
end HautevilleHouse