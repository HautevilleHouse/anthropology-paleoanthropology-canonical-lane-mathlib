import AnthropologyPaleoanthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPaleoanthropologyCanonicalLaneLean

structure PaleoPhylogenyPackage where
  homininTaxa : List String
  phylogeneticTree : Prop
  branchLengths : Prop
  monophylyCheck : Prop

def PaleoPhylogenyClosed (P : PaleoPhylogenyPackage) : Prop :=
  P.phylogeneticTree ∧ P.branchLengths ∧ P.monophylyCheck

structure PaleoPhylogenyEvidence (P : PaleoPhylogenyPackage) where
  phylogeneticTreeClosed : P.phylogeneticTree
  branchLengthsClosed : P.branchLengths
  monophylyCheckClosed : P.monophylyCheck

theorem paleo_phylogeny_closed_from_evidence (P : PaleoPhylogenyPackage)
    (E : PaleoPhylogenyEvidence P) : PaleoPhylogenyClosed P := by
  exact And.intro E.phylogeneticTreeClosed
    (And.intro E.branchLengthsClosed E.monophylyCheckClosed)

end AnthropologyPaleoanthropologyCanonicalLaneLean
end HautevilleHouse