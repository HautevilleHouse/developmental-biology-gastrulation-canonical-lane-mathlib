import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyGastrulationCanonicalLaneLean

structure GastrulationAdmittedObject where
  embryoModel : Type
  topology : TopologicalSpace embryoModel
  germLayersFormed : Prop
  morphogeneticMovements : Prop
  conclusion : germLayersFormed

structure AdmissibleClass where
  object : GastrulationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GastrulationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def GastrulationWitnessClosed (O : GastrulationAdmittedObject) : Prop :=
  O.germLayersFormed

end DevelopmentalBiologyGastrulationCanonicalLaneLean
end HautevilleHouse