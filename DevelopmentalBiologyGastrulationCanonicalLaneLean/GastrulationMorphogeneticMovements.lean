import canonicalLaneMathlib.AdmissibleClass
import DevelopmentalBiologyGastrulationCanonicalLaneLean.GastrulationAdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyGastrulationCanonicalLaneLean

structure MorphogeneticMovementPackage where
  involution : Prop
  invagination : Prop
  delamination : Prop
  epiboly : Prop
  convergenceExtension : Prop
  movementCoordination : Prop

structure MorphogeneticMovementEvidence (M : MorphogeneticMovementPackage) where
  involutionClosed : M.involution
  invaginationClosed : M.invagination
  delaminationClosed : M.delamination
  epibolyClosed : M.epiboly
  convergenceExtensionClosed : M.convergenceExtension
  movementCoordinationClosed : M.movementCoordination

def MorphogeneticMovementClosed (M : MorphogeneticMovementPackage) : Prop :=
  M.involution ∧ M.invagination ∧ M.delamination ∧ M.epiboly ∧ M.convergenceExtension ∧ M.movementCoordination

theorem morphogenetic_movement_closed_from_evidence (M : MorphogeneticMovementPackage) (E : MorphogeneticMovementEvidence M) :
    MorphogeneticMovementClosed M := by
  exact And.intro E.involutionClosed (And.intro E.invaginationClosed (And.intro E.delaminationClosed (And.intro E.epibolyClosed (And.intro E.convergenceExtensionClosed E.movementCoordinationClosed))))

end DevelopmentalBiologyGastrulationCanonicalLaneLean
end HautevilleHouse