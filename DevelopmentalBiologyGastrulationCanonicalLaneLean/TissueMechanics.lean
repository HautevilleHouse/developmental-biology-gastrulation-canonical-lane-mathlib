import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyGastrulationCanonicalLaneLean

structure TissueMechanicsPackage where
  tissueStiffness : Prop
  actomyosinContractility : Prop
  cellCellAdhesion : Prop
  tissueFlow : Prop

structure TissueMechanicsEvidence (T : TissueMechanicsPackage) where
  tissueStiffnessClosed : T.tissueStiffness
  actomyosinContractilityClosed : T.actomyosinContractility
  cellCellAdhesionClosed : T.cellCellAdhesion
  tissueFlowClosed : T.tissueFlow

def TissueMechanicsClosed (T : TissueMechanicsPackage) : Prop :=
  T.tissueStiffness ∧ T.actomyosinContractility ∧ T.cellCellAdhesion ∧ T.tissueFlow

theorem tissue_mechanics_closed_from_evidence (T : TissueMechanicsPackage) (E : TissueMechanicsEvidence T) : TissueMechanicsClosed T := by
  exact And.intro E.tissueStiffnessClosed (And.intro E.actomyosinContractilityClosed (And.intro E.cellCellAdhesionClosed E.tissueFlowClosed))

end DevelopmentalBiologyGastrulationCanonicalLaneLean
end HautevilleHouse