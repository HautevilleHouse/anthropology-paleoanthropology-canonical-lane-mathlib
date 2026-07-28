import Mathlib.Topology.Basic

/-!
# Hominid Fossil Evidence Package
-/

namespace HautevilleHouse
namespace AnthropologyPaleoanthropologyCanonicalLaneLean

structure HominidFossilEvidencePackage where
  fossilSite : Type u
  fossilSpecimen : Type v
  datingMethod : Type w
  morphologyData : Type x
  fossilAge : Type y
  siteStratigraphy : Prop
  specimenPreservation : Prop
  datingCalibration : Prop
  morphologicalTraitsRecorded : Prop
  ageEstimateReliable : Prop

structure HominidFossilEvidence (P : HominidFossilEvidencePackage) where
  siteStratigraphyClosed : P.siteStratigraphy
  specimenPreservationClosed : P.specimenPreservation
  datingCalibrationClosed : P.datingCalibration
  morphologicalTraitsRecordedClosed : P.morphologicalTraitsRecorded
  ageEstimateReliableClosed : P.ageEstimateReliable

def HominidFossilEvidenceClosed (P : HominidFossilEvidencePackage) : Prop :=
  P.siteStratigraphy ∧ P.specimenPreservation ∧ P.datingCalibration ∧
  P.morphologicalTraitsRecorded ∧ P.ageEstimateReliable

theorem hominid_fossil_evidence_closed_from_evidence
    (P : HominidFossilEvidencePackage) (E : HominidFossilEvidence P) :
    HominidFossilEvidenceClosed P := by
  exact And.intro E.siteStratigraphyClosed
    (And.intro E.specimenPreservationClosed
      (And.intro E.datingCalibrationClosed
        (And.intro E.morphologicalTraitsRecordedClosed E.ageEstimateReliableClosed)))

end AnthropologyPaleoanthropologyCanonicalLaneLean
end HautevilleHouse