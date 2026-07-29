import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyGastrulationCanonicalLaneLean

structure BrachyuryGeneRegulatoryPackage where
  brachyuryExpression : Prop
  nodalSignaling : Prop
  wntSignaling : Prop
  foxa2Cooperation : Prop
  mesodermSpecification : Prop

structure BrachyuryGeneRegulatoryEvidence (B : BrachyuryGeneRegulatoryPackage) where
  brachyuryExpressionClosed : B.brachyuryExpression
  nodalSignalingClosed : B.nodalSignaling
  wntSignalingClosed : B.wntSignaling
  foxa2CooperationClosed : B.foxa2Cooperation
  mesodermSpecificationClosed : B.mesodermSpecification

def BrachyuryGeneRegulatoryClosed (B : BrachyuryGeneRegulatoryPackage) : Prop :=
  B.brachyuryExpression ∧ B.nodalSignaling ∧ B.wntSignaling ∧
  B.foxa2Cooperation ∧ B.mesodermSpecification

theorem brachyury_gene_regulatory_closed_from_evidence (B : BrachyuryGeneRegulatoryPackage)
    (E : BrachyuryGeneRegulatoryEvidence B) : BrachyuryGeneRegulatoryClosed B := by
  exact And.intro E.brachyuryExpressionClosed
    (And.intro E.nodalSignalingClosed
      (And.intro E.wntSignalingClosed
        (And.intro E.foxa2CooperationClosed E.mesodermSpecificationClosed)))

end DevelopmentalBiologyGastrulationCanonicalLaneLean
end HautevilleHouse
