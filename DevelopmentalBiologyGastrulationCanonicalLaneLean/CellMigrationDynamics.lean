import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyGastrulationCanonicalLaneLean

structure CellMigrationDynamicsPackage where
  chemotaxisSignaling : Prop
  cellAdhesionMolecules : Prop
  cytoskeletalRearrangement : Prop
  collectiveCellMovement : Prop
  extraCellularMatrixRemodeling : Prop

structure CellMigrationDynamicsEvidence (C : CellMigrationDynamicsPackage) where
  chemotaxisSignalingClosed : C.chemotaxisSignaling
  cellAdhesionMoleculesClosed : C.cellAdhesionMolecules
  cytoskeletalRearrangementClosed : C.cytoskeletalRearrangement
  collectiveCellMovementClosed : C.collectiveCellMovement
  extraCellularMatrixRemodelingClosed : C.extraCellularMatrixRemodeling

def CellMigrationDynamicsClosed (C : CellMigrationDynamicsPackage) : Prop :=
  C.chemotaxisSignaling ∧ C.cellAdhesionMolecules ∧ C.cytoskeletalRearrangement ∧
  C.collectiveCellMovement ∧ C.extraCellularMatrixRemodeling

theorem cell_migration_dynamics_closed_from_evidence (C : CellMigrationDynamicsPackage)
    (E : CellMigrationDynamicsEvidence C) : CellMigrationDynamicsClosed C := by
  exact And.intro E.chemotaxisSignalingClosed
    (And.intro E.cellAdhesionMoleculesClosed
      (And.intro E.cytoskeletalRearrangementClosed
        (And.intro E.collectiveCellMovementClosed E.extraCellularMatrixRemodelingClosed)))

end DevelopmentalBiologyGastrulationCanonicalLaneLean
end HautevilleHouse
