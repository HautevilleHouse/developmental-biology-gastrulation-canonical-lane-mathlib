import canonicalLaneMathlib.AdmissibleClass
import DevelopmentalBiologyGastrulationCanonicalLaneLean.GastrulationAdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyGastrulationCanonicalLaneLean

structure CellFateSpecificationPackage where
  germLayerInduction : Prop
  positionalInformation : Prop
  cellLineageRestriction : Prop
  competenceWindow : Prop
  fateDetermination : Prop
  germLayerSpecificationComplete : Prop

structure CellFateSpecificationEvidence (C : CellFateSpecificationPackage) where
  germLayerInductionClosed : C.germLayerInduction
  positionalInformationClosed : C.positionalInformation
  cellLineageRestrictionClosed : C.cellLineageRestriction
  competenceWindowClosed : C.competenceWindow
  fateDeterminationClosed : C.fateDetermination
  germLayerSpecificationCompleteClosed : C.germLayerSpecificationComplete

def CellFateSpecificationClosed (C : CellFateSpecificationPackage) : Prop :=
  C.germLayerInduction ∧ C.positionalInformation ∧ C.cellLineageRestriction ∧ C.competenceWindow ∧ C.fateDetermination ∧ C.germLayerSpecificationComplete

theorem cell_fate_specification_closed_from_evidence (C : CellFateSpecificationPackage) (E : CellFateSpecificationEvidence C) :
    CellFateSpecificationClosed C := by
  exact And.intro E.germLayerInductionClosed (And.intro E.positionalInformationClosed (And.intro E.cellLineageRestrictionClosed (And.intro E.competenceWindowClosed (And.intro E.fateDeterminationClosed E.germLayerSpecificationCompleteClosed))))

end DevelopmentalBiologyGastrulationCanonicalLaneLean
end HautevilleHouse