import HautevilleHouse.AnthropologyPaleoanthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPaleoanthropologyCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  carriedRemainder : String

def sourceRepository : String := "anthropology-paleoanthropology-canonical-lane"
def sourceDescription : String := "Hominin phylogeny constrained by fossil evidence"
def sourceTheoremBoundary : String := "Classical boundary: morphological and genetic evidence"

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary,
  constrainedStatement := "Constrained hominin phylogeny closure through admissible fossils and phylogenetic consistency.",
  carriedRemainder := "Unresolved ancestral lineages and incomplete fossil record."
}

theorem theorem_statement_key_checked : sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_object_checked : sourceTheoremStatement.theoremObject = sourceDescription := by
  rfl

end AnthropologyPaleoanthropologyCanonicalLaneLean
end HautevilleHouse