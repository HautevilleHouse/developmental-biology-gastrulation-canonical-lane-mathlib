import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyGastrulationCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  transcriptionFactors : Type u
  geneExpressionDynamics : Prop
  feedbackLoops : Prop
  cellFateDetermination : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  geneExpressionDynamicsClosed : G.geneExpressionDynamics
  feedbackLoopsClosed : G.feedbackLoops
  cellFateDeterminationClosed : G.cellFateDetermination

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.geneExpressionDynamics ∧ G.feedbackLoops ∧ G.cellFateDetermination

theorem gene_regulatory_network_closed_from_evidence (G : GeneRegulatoryNetworkPackage) (E : GeneRegulatoryNetworkEvidence G) : GeneRegulatoryNetworkClosed G := by
  exact And.intro E.geneExpressionDynamicsClosed (And.intro E.feedbackLoopsClosed E.cellFateDeterminationClosed)

end DevelopmentalBiologyGastrulationCanonicalLaneLean
end HautevilleHouse