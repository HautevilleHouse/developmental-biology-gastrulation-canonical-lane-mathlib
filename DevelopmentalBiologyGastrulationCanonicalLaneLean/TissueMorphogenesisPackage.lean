import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyGastrulationCanonicalLaneLean

structure TissueMorphogenesisPackage where
  cellMigration : Prop
  involution : Prop
  convergenceExtension : Prop
  epithelialMesenchymalTransition : Prop
  germLayerArrangement : Prop

structure TissueMorphogenesisEvidence (T : TissueMorphogenesisPackage) where
  cellMigrationClosed : T.cellMigration
  involutionClosed : T.involution
  convergenceExtensionClosed : T.convergenceExtension
  epithelialMesenchymalTransitionClosed : T.epithelialMesenchymalTransition
  germLayerArrangementClosed : T.germLayerArrangement

def TissueMorphogenesisClosed (T : TissueMorphogenesisPackage) : Prop :=
  T.cellMigration ∧ T.involution ∧ T.convergenceExtension ∧
  T.epithelialMesenchymalTransition ∧ T.germLayerArrangement

theorem tissue_morphogenesis_closed_from_evidence
    (T : TissueMorphogenesisPackage) (E : TissueMorphogenesisEvidence T) :
    TissueMorphogenesisClosed T := by
  exact And.intro E.cellMigrationClosed
    (And.intro E.involutionClosed
      (And.intro E.convergenceExtensionClosed
        (And.intro E.epithelialMesenchymalTransitionClosed E.germLayerArrangementClosed)))

end DevelopmentalBiologyGastrulationCanonicalLaneLean
end HautevilleHouse