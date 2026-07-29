import canonicalLaneMathlib.AdmissibleClass
import DevelopmentalBiologyGastrulationCanonicalLaneLean.GastrulationAdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyGastrulationCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  signalingPathways : Prop
  transcriptionFactors : Prop
  morphogenGradients : Prop
  geneExpressionPatterns : Prop
  feedbackLoops : Prop
  networkRobustness : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  signalingPathwaysClosed : G.signalingPathways
  transcriptionFactorsClosed : G.transcriptionFactors
  morphogenGradientsClosed : G.morphogenGradients
  geneExpressionPatternsClosed : G.geneExpressionPatterns
  feedbackLoopsClosed : G.feedbackLoops
  networkRobustnessClosed : G.networkRobustness

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.signalingPathways ∧ G.transcriptionFactors ∧ G.morphogenGradients ∧ G.geneExpressionPatterns ∧ G.feedbackLoops ∧ G.networkRobustness

theorem gene_regulatory_network_closed_from_evidence (G : GeneRegulatoryNetworkPackage) (E : GeneRegulatoryNetworkEvidence G) :
    GeneRegulatoryNetworkClosed G := by
  exact And.intro E.signalingPathwaysClosed (And.intro E.transcriptionFactorsClosed (And.intro E.morphogenGradientsClosed (And.intro E.geneExpressionPatternsClosed (And.intro E.feedbackLoopsClosed E.networkRobustnessClosed))))

end DevelopmentalBiologyGastrulationCanonicalLaneLean
end HautevilleHouse