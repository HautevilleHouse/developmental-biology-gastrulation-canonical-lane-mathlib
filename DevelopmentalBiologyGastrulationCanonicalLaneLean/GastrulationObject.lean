import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyGastrulationCanonicalLaneLean

structure GastrulationObject where
  embryo : Type
  tissueTopology : TopologicalSpace embryo
  cellMovement : Prop
  germLayerFormation : Prop
  convergentExtension : Prop
  cellIngression : Prop
  conclusion : cellMovement ∧ germLayerFormation ∧ convergentExtension ∧ cellIngression

def GastrulationWitnessClosed (O : GastrulationObject) : Prop :=
  O.cellMovement ∧ O.germLayerFormation ∧ O.convergentExtension ∧ O.cellIngression

end DevelopmentalBiologyGastrulationCanonicalLaneLean
end HautevilleHouse