import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyGastrulationCanonicalLaneLean

structure MorphogenGradientPackage where
  morphogenType : Type u
  concentrationGradient : Prop
  sourceLocalization : Prop
  receptorBinding : Prop
  thresholdResponse : Prop

structure MorphogenGradientEvidence (M : MorphogenGradientPackage) where
  concentrationGradientClosed : M.concentrationGradient
  sourceLocalizationClosed : M.sourceLocalization
  receptorBindingClosed : M.receptorBinding
  thresholdResponseClosed : M.thresholdResponse

def MorphogenGradientClosed (M : MorphogenGradientPackage) : Prop :=
  M.concentrationGradient ∧ M.sourceLocalization ∧ M.receptorBinding ∧ M.thresholdResponse

theorem morphogen_gradient_closed_from_evidence (M : MorphogenGradientPackage) (E : MorphogenGradientEvidence M) : MorphogenGradientClosed M := by
  exact And.intro E.concentrationGradientClosed (And.intro E.sourceLocalizationClosed (And.intro E.receptorBindingClosed E.thresholdResponseClosed))

end DevelopmentalBiologyGastrulationCanonicalLaneLean
end HautevilleHouse