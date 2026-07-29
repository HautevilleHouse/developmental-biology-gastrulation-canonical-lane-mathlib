import DevelopmentalBiologyGastrulationCanonicalLaneLean.GastrulationKinematics

namespace HautevilleHouse
namespace DevelopmentalBiologyGastrulationCanonicalLaneLean

structure DynamicsPackage {K : KinematicsPackage} where
  forceGeneration : Prop
  adhesionDynamics : Prop
  corticalTension : Prop
  signalingGradient : Prop

structure DynamicsEvidence {K : KinematicsPackage} (D : DynamicsPackage K) where
  forceGenerationClosed : D.forceGeneration
  adhesionDynamicsClosed : D.adhesionDynamics
  corticalTensionClosed : D.corticalTension
  signalingGradientClosed : D.signalingGradient

def DynamicsClosed {K : KinematicsPackage} (D : DynamicsPackage K) : Prop :=
  D.forceGeneration ∧ D.adhesionDynamics ∧ D.corticalTension ∧ D.signalingGradient

theorem dynamics_closed_from_evidence {K : KinematicsPackage} (D : DynamicsPackage K) (E : DynamicsEvidence D) :
    DynamicsClosed D := by
  exact And.intro E.forceGenerationClosed (And.intro E.adhesionDynamicsClosed (And.intro E.corticalTensionClosed E.signalingGradientClosed))

end DevelopmentalBiologyGastrulationCanonicalLaneLean
end HautevilleHouse