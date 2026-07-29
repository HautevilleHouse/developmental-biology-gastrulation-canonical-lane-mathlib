import DevelopmentalBiologyGastrulationCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace DevelopmentalBiologyGastrulationCanonicalLaneLean

def gastrulation_endgame_closed (A : AdmissibleClass) : Prop :=
  ConstrainedGastrulationClosure A

theorem gastrulation_endgame_proof (A : AdmissibleClass) :
    gastrulation_endgame_closed A := by
  exact constrained_gastrulation_endgame A

end DevelopmentalBiologyGastrulationCanonicalLaneLean
end HautevilleHouse