import canonicalLaneMathlib.AdmissibleClass
import DevelopmentalBiologyGastrulationCanonicalLaneLean.GastrulationGateLemmas

namespace HautevilleHouse
namespace DevelopmentalBiologyGastrulationCanonicalLaneLean

def ConstrainedGastrulationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gastrulation_endgame (A : AdmissibleClass) :
    ConstrainedGastrulationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologyGastrulationCanonicalLaneLean
end HautevilleHouse