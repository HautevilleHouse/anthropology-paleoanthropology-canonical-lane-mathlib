import HautevilleHouse.AnthropologyPaleoanthropologyCanonicalLaneLean.HomininFossilEvidence

namespace HautevilleHouse
namespace AnthropologyPaleoanthropologyCanonicalLaneLean

structure PhylogeneticAnalysisCertificate (F : HomininFossilEvidencePackage) where
  treeTopology : Prop
  branchLengths : Prop
  bootstrapSupport : Prop
  congruenceWithMorphology : Prop
  treeTopologyClosed : treeTopology
  branchLengthsClosed : branchLengths
  bootstrapSupportClosed : bootstrapSupport
  congruenceWithMorphologyClosed : congruenceWithMorphology
  fossilEvidence : HomininFossilEvidence F

def PhylogeneticAnalysisCertificateClosed {F : HomininFossilEvidencePackage}
    (C : PhylogeneticAnalysisCertificate F) : Prop :=
  C.treeTopology ∧ C.branchLengths ∧ C.bootstrapSupport ∧ C.congruenceWithMorphology ∧
  HomininFossilEvidenceClosed F

theorem phylogenetic_analysis_certificate_closed
    {F : HomininFossilEvidencePackage} (C : PhylogeneticAnalysisCertificate F) :
    PhylogeneticAnalysisCertificateClosed C := by
  exact And.intro C.treeTopologyClosed
    (And.intro C.branchLengthsClosed
      (And.intro C.bootstrapSupportClosed
        (And.intro C.congruenceWithMorphologyClosed
          (hominin_fossil_evidence_closed_from_evidence F C.fossilEvidence))))

end AnthropologyPaleoanthropologyCanonicalLaneLean
end HautevilleHouse