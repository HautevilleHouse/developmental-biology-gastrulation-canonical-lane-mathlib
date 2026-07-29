import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyGastrulationCanonicalLaneLean

structure ConvergentExtensionPackage where
  cellIntercalation : Prop
  tissueElongation : Prop
  planarCellPolarity : Prop
  junctionRemodeling : Prop
  cellIntercalationClosed : cellIntercalation
  tissueElongationClosed : tissueElongation
  planarCellPolarityClosed : planarCellPolarity
  junctionRemodelingClosed : junctionRemodeling

structure ConvergentExtensionEvidence (C : ConvergentExtensionPackage) where
  cellIntercalationClosed : C.cellIntercalationClosed
  tissueElongationClosed : C.tissueElongationClosed
  planarCellPolarityClosed : C.planarCellPolarityClosed
  junctionRemodelingClosed : C.junctionRemodelingClosed

def ConvergentExtensionClosed (C : ConvergentExtensionPackage) : Prop :=
  C.cellIntercalation ∧ C.tissueElongation ∧ C.planarCellPolarity ∧ C.junctionRemodeling

theorem convergent_extension_closed_from_evidence (C : ConvergentExtensionPackage) (E : ConvergentExtensionEvidence C) : ConvergentExtensionClosed C := by
  exact And.intro E.cellIntercalationClosed (And.intro E.tissueElongationClosed (And.intro E.planarCellPolarityClosed E.junctionRemodelingClosed))

end DevelopmentalBiologyGastrulationCanonicalLaneLean
end HautevilleHouse