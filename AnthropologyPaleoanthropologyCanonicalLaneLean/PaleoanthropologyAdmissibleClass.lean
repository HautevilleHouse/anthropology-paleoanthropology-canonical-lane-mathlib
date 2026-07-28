import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPaleoanthropologyCanonicalLaneLean

structure PaleoanthropologyAdmittedObject where
  fossilSpecimen : String
  speciesClassification : Prop
  morphologicalData : Prop
  datingEvidence : Prop
  phylogeneticPosition : Prop
  conclusion : speciesClassification ∧ morphologicalData ∧ datingEvidence ∧ phylogeneticPosition

structure AdmissibleClass where
  object : PaleoanthropologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AnthropologyPaleoanthropologyCanonicalLaneLean
end HautevilleHouse