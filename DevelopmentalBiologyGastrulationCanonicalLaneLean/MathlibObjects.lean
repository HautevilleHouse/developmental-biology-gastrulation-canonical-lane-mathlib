import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyGastrulationCanonicalLaneLean

structure EmbryoSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GastrulationAdmittedObject where
  space : EmbryoSpace
  threeGermLayers : Prop
  tissueMorphogenesis : Prop
  signalingPathwaysModel : Type
  signalingTopology : TopologicalSpace signalingPathwaysModel
  embryoPatternFormation : Prop
  conclusion : embryoPatternFormation

structure GastrulationEndgameState where
  object : GastrulationAdmittedObject

def GastrulationWitnessClosed (O : GastrulationAdmittedObject) : Prop :=
  O.embryoPatternFormation

end DevelopmentalBiologyGastrulationCanonicalLaneLean
end HautevilleHouse