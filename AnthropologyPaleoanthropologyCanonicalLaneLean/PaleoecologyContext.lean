import canonicalLaneMathlib.AdmissibleClass
import .DatingMethods

namespace HautevilleHouse
namespace AnthropologyPaleoanthropologyCanonicalLaneLean

structure PaleoecologyContextPackage {P : FossilEvidencePackage} {D : DatingMethodsPackage P} where
  paleoclimateReconstruction : Prop
  habitatReconstruction : Prop
  faunalAssemblage : Prop
  dietaryInference : Prop

structure PaleoecologyContextEvidence {P : FossilEvidencePackage} {D : DatingMethodsPackage P} (C : PaleoecologyContextPackage P D) where
  paleoclimateReconstructionClosed : C.paleoclimateReconstruction
  habitatReconstructionClosed : C.habitatReconstruction
  faunalAssemblageClosed : C.faunalAssemblage
  dietaryInferenceClosed : C.dietaryInference

def PaleoecologyContextClosed {P : FossilEvidencePackage} {D : DatingMethodsPackage P} (C : PaleoecologyContextPackage P D) : Prop :=
  C.paleoclimateReconstruction ∧ C.habitatReconstruction ∧ C.faunalAssemblage ∧ C.dietaryInference

theorem paleoecology_context_closed_from_evidence {P : FossilEvidencePackage} {D : DatingMethodsPackage P} (C : PaleoecologyContextPackage P D) (E : PaleoecologyContextEvidence C) : PaleoecologyContextClosed C := by
  exact And.intro E.paleoclimateReconstructionClosed (And.intro E.habitatReconstructionClosed (And.intro E.faunalAssemblageClosed E.dietaryInferenceClosed))

end AnthropologyPaleoanthropologyCanonicalLaneLean
end HautevilleHouse