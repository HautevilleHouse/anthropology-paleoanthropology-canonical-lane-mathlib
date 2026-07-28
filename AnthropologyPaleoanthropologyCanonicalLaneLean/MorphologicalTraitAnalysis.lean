import HautevilleHouse.AnthropologyPaleoanthropologyCanonicalLaneLean.PhylogeneticAnalysis

/-!
# Morphological Trait Analysis Package
-/

namespace HautevilleHouse
namespace AnthropologyPaleoanthropologyCanonicalLaneLean

structure MorphologicalTraitAnalysisPackage {F : HominidFossilEvidencePackage}
    {D : DatingMethodPackage F} {P : PhylogeneticAnalysisPackage D} where
  traitList : Prop
  continuousTraits : Prop
  discreteTraits : Prop
  sizeAdjustment : Prop
  principalComponentAnalysis : Prop
  discriminantAnalysis : Prop
  traitCorrelation : Prop

structure MorphologicalTraitAnalysisEvidence {F : HominidFossilEvidencePackage}
    {D : DatingMethodPackage F} {P : PhylogeneticAnalysisPackage D}
    (M : MorphologicalTraitAnalysisPackage P) where
  traitListClosed : M.traitList
  continuousTraitsClosed : M.continuousTraits
  discreteTraitsClosed : M.discreteTraits
  sizeAdjustmentClosed : M.sizeAdjustment
  principalComponentAnalysisClosed : M.principalComponentAnalysis
  discriminantAnalysisClosed : M.discriminantAnalysis
  traitCorrelationClosed : M.traitCorrelation

def MorphologicalTraitAnalysisClosed {F : HominidFossilEvidencePackage}
    {D : DatingMethodPackage F} {P : PhylogeneticAnalysisPackage D}
    (M : MorphologicalTraitAnalysisPackage P) : Prop :=
  M.traitList ∧ M.continuousTraits ∧ M.discreteTraits ∧
  M.sizeAdjustment ∧ M.principalComponentAnalysis ∧
  M.discriminantAnalysis ∧ M.traitCorrelation

theorem morphological_trait_analysis_closed_from_evidence
    {F : HominidFossilEvidencePackage} {D : DatingMethodPackage F}
    {P : PhylogeneticAnalysisPackage D} (M : MorphologicalTraitAnalysisPackage P)
    (E : MorphologicalTraitAnalysisEvidence M) :
    MorphologicalTraitAnalysisClosed M := by
  exact And.intro E.traitListClosed
    (And.intro E.continuousTraitsClosed
      (And.intro E.discreteTraitsClosed
        (And.intro E.sizeAdjustmentClosed
          (And.intro E.principalComponentAnalysisClosed
            (And.intro E.discriminantAnalysisClosed E.traitCorrelationClosed)))))

end AnthropologyPaleoanthropologyCanonicalLaneLean
end HautevilleHouse