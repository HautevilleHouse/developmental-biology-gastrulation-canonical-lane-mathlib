import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyGastrulationCanonicalLaneLean

structure SignalingPathwayPackage where
  tgfBetaSignaling : Prop
  wntSignaling : Prop
  nodalSignaling : Prop
  antagonistRegulation : Prop
  gradientInterpretation : Prop

structure SignalingPathwayEvidence (S : SignalingPathwayPackage) where
  tgfBetaSignalingClosed : S.tgfBetaSignaling
  wntSignalingClosed : S.wntSignaling
  nodalSignalingClosed : S.nodalSignaling
  antagonistRegulationClosed : S.antagonistRegulation
  gradientInterpretationClosed : S.gradientInterpretation

def SignalingPathwayClosed (S : SignalingPathwayPackage) : Prop :=
  S.tgfBetaSignaling ∧ S.wntSignaling ∧ S.nodalSignaling ∧
  S.antagonistRegulation ∧ S.gradientInterpretation

theorem signaling_pathway_closed_from_evidence
    (S : SignalingPathwayPackage) (E : SignalingPathwayEvidence S) :
    SignalingPathwayClosed S := by
  exact And.intro E.tgfBetaSignalingClosed
    (And.intro E.wntSignalingClosed
      (And.intro E.nodalSignalingClosed
        (And.intro E.antagonistRegulationClosed E.gradientInterpretationClosed)))

end DevelopmentalBiologyGastrulationCanonicalLaneLean
end HautevilleHouse