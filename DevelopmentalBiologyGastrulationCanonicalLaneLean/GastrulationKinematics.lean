import DevelopmentalBiologyGastrulationCanonicalLaneLean.GastrulationObject

namespace HautevilleHouse
namespace DevelopmentalBiologyGastrulationCanonicalLaneLean

structure KinematicsPackage where
  tissueDeformation : Prop
  cellRearrangement : Prop
  cellShapeChange : Prop
  cellDivision : Prop

structure KinematicsEvidence (K : KinematicsPackage) where
  tissueDeformationClosed : K.tissueDeformation
  cellRearrangementClosed : K.cellRearrangement
  cellShapeChangeClosed : K.cellShapeChange
  cellDivisionClosed : K.cellDivision

def KinematicsClosed (K : KinematicsPackage) : Prop :=
  K.tissueDeformation ∧ K.cellRearrangement ∧ K.cellShapeChange ∧ K.cellDivision

theorem kinematics_closed_from_evidence (K : KinematicsPackage) (E : KinematicsEvidence K) :
    KinematicsClosed K := by
  exact And.intro E.tissueDeformationClosed (And.intro E.cellRearrangementClosed (And.intro E.cellShapeChangeClosed E.cellDivisionClosed))

end DevelopmentalBiologyGastrulationCanonicalLaneLean
end HautevilleHouse