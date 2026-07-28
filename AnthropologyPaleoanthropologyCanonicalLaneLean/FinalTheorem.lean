import HautevilleHouse.AnthropologyPaleoanthropologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AnthropologyPaleoanthropologyCanonicalLaneLean

def ConstrainedPaleoanthropologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_paleoanthropology_endgame (A : AdmissibleClass) :
    ConstrainedPaleoanthropologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AnthropologyPaleoanthropologyCanonicalLaneLean
end HautevilleHouse