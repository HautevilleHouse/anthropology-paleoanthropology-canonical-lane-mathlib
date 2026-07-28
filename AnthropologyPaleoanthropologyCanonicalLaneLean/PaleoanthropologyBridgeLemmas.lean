import HautevilleHouse.AnthropologyPaleoanthropologyCanonicalLaneLean.PaleoanthropologyAdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPaleoanthropologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AnthropologyPaleoanthropologyCanonicalLaneLean
end HautevilleHouse