import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyGastrulationCanonicalLaneLean

structure EpithelialMesenchymalTransitionPackage where
  cellPolarityLoss : Prop
  cellJunctionRemodeling : Prop
  cytoskeletalReorganization : Prop
  migratoryBehaviorAcquisition : Prop
  transcriptionFactorProgram : Prop

structure EpithelialMesenchymalTransitionEvidence (E : EpithelialMesenchymalTransitionPackage) where
  cellPolarityLossClosed : E.cellPolarityLoss
  cellJunctionRemodelingClosed : E.cellJunctionRemodeling
  cytoskeletalReorganizationClosed : E.cytoskeletalReorganization
  migratoryBehaviorAcquisitionClosed : E.migratoryBehaviorAcquisition
  transcriptionFactorProgramClosed : E.transcriptionFactorProgram

def EpithelialMesenchymalTransitionClosed (E : EpithelialMesenchymalTransitionPackage) : Prop :=
  E.cellPolarityLoss ∧ E.cellJunctionRemodeling ∧ E.cytoskeletalReorganization ∧
  E.migratoryBehaviorAcquisition ∧ E.transcriptionFactorProgram

theorem epithelial_mesenchymal_transition_closed_from_evidence
    (E : EpithelialMesenchymalTransitionPackage)
    (Ev : EpithelialMesenchymalTransitionEvidence E) : EpithelialMesenchymalTransitionClosed E := by
  exact And.intro Ev.cellPolarityLossClosed
    (And.intro Ev.cellJunctionRemodelingClosed
      (And.intro Ev.cytoskeletalReorganizationClosed
        (And.intro Ev.migratoryBehaviorAcquisitionClosed Ev.transcriptionFactorProgramClosed)))

end DevelopmentalBiologyGastrulationCanonicalLaneLean
end HautevilleHouse
