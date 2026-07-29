import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyGastrulationCanonicalLaneLean

structure GastrulationStagesPackage where
  fertilization : Prop
  cleavage : Prop
  blastulation : Prop
  gastrulation : Prop
  organogenesis : Prop

structure GastrulationStagesEvidence (G : GastrulationStagesPackage) where
  fertilizationClosed : G.fertilization
  cleavageClosed : G.cleavage
  blastulationClosed : G.blastulation
  gastrulationClosed : G.gastrulation
  organogenesisClosed : G.organogenesis

def GastrulationStagesClosed (G : GastrulationStagesPackage) : Prop :=
  G.fertilization ∧ G.cleavage ∧ G.blastulation ∧ G.gastrulation ∧ G.organogenesis

theorem gastrulation_stages_closed_from_evidence (G : GastrulationStagesPackage)
    (E : GastrulationStagesEvidence G) : GastrulationStagesClosed G := by
  exact And.intro E.fertilizationClosed
    (And.intro E.cleavageClosed
      (And.intro E.blastulationClosed
        (And.intro E.gastrulationClosed E.organogenesisClosed)))

end DevelopmentalBiologyGastrulationCanonicalLaneLean
end HautevilleHouse
