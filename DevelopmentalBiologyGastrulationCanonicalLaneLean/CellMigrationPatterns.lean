import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyGastrulationCanonicalLaneLean

structure CellMigrationPackage where
  cellType : Type u
  extracellularMatrix : Type v
  chemotacticGradient : Type w
  migrationDirection : Prop
  adhesionMolecules : Prop
  cytoskeletalDynamics : Prop
  migrationDirectionClosed : migrationDirection
  adhesionMoleculesClosed : adhesionMolecules
  cytoskeletalDynamicsClosed : cytoskeletalDynamics

structure CellMigrationEvidence (M : CellMigrationPackage) where
  migrationDirectionClosed : M.migrationDirectionClosed
  adhesionMoleculesClosed : M.adhesionMoleculesClosed
  cytoskeletalDynamicsClosed : M.cytoskeletalDynamicsClosed

def CellMigrationClosed (M : CellMigrationPackage) : Prop :=
  M.migrationDirection ∧ M.adhesionMolecules ∧ M.cytoskeletalDynamics

theorem cell_migration_closed_from_evidence (M : CellMigrationPackage) (E : CellMigrationEvidence M) : CellMigrationClosed M := by
  exact And.intro E.migrationDirectionClosed (And.intro E.adhesionMoleculesClosed E.cytoskeletalDynamicsClosed)

end DevelopmentalBiologyGastrulationCanonicalLaneLean
end HautevilleHouse