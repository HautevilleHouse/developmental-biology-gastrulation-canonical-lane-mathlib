import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyGastrulationCanonicalLaneLean

structure CellMovementPackage where
  cellPopulation : Type u
  migrationRate : Prop
  chemotaxisSignal : Prop
  intercalation : Prop
  convergenceExtension : Prop

structure CellMovementEvidence (M : CellMovementPackage) where
  migrationRateClosed : M.migrationRate
  chemotaxisSignalClosed : M.chemotaxisSignal
  intercalationClosed : M.intercalation
  convergenceExtensionClosed : M.convergenceExtension

def CellMovementClosed (M : CellMovementPackage) : Prop :=
  M.migrationRate ∧ M.chemotaxisSignal ∧ M.intercalation ∧ M.convergenceExtension

theorem cell_movement_closed_from_evidence (M : CellMovementPackage) (E : CellMovementEvidence M) : CellMovementClosed M := by
  exact And.intro E.migrationRateClosed (And.intro E.chemotaxisSignalClosed (And.intro E.intercalationClosed E.convergenceExtensionClosed))

end DevelopmentalBiologyGastrulationCanonicalLaneLean
end HautevilleHouse