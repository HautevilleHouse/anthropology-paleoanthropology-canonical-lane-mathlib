import AnthropologyPaleoanthropologyCanonicalLaneLean.FossilDating

namespace HautevilleHouse
namespace AnthropologyPaleoanthropologyCanonicalLaneLean

structure MorphologicalAnalysisPackage where
  cranialMetrics : Prop
  postcranialMetrics : Prop
  dentalMorphology : Prop
  morphologicalDisparity : Prop

def MorphologicalAnalysisClosed (M : MorphologicalAnalysisPackage) : Prop :=
  M.cranialMetrics ∧ M.postcranialMetrics ∧ M.dentalMorphology ∧ M.morphologicalDisparity

structure MorphologicalAnalysisEvidence (M : MorphologicalAnalysisPackage) where
  cranialMetricsClosed : M.cranialMetrics
  postcranialMetricsClosed : M.postcranialMetrics
  dentalMorphologyClosed : M.dentalMorphology
  morphologicalDisparityClosed : M.morphologicalDisparity

theorem morphological_analysis_closed_from_evidence (M : MorphologicalAnalysisPackage)
    (E : MorphologicalAnalysisEvidence M) : MorphologicalAnalysisClosed M := by
  exact And.intro E.cranialMetricsClosed
    (And.intro E.postcranialMetricsClosed
      (And.intro E.dentalMorphologyClosed E.morphologicalDisparityClosed))

end AnthropologyPaleoanthropologyCanonicalLaneLean
end HautevilleHouse