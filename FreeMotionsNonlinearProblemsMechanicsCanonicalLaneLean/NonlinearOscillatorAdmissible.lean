import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

structure NonlinearOscillatorPackage where
  phaseSpace : Type u
  nonlinearPotential : Type v
  anharmonicOscillatorEquation : Prop
  firstIntegralEnergy : Prop
  periodicOrbitExistence : Prop

structure NonlinearOscillatorEvidence (N : NonlinearOscillatorPackage) where
  anharmonicOscillatorEquationClosed : N.anharmonicOscillatorEquation
  firstIntegralEnergyClosed : N.firstIntegralEnergy
  periodicOrbitExistenceClosed : N.periodicOrbitExistence

def NonlinearOscillatorClosed (N : NonlinearOscillatorPackage) : Prop :=
  N.anharmonicOscillatorEquation ∧ N.firstIntegralEnergy ∧ N.periodicOrbitExistence

theorem nonlinear_oscillator_closed_from_evidence
    (N : NonlinearOscillatorPackage) (Ev : NonlinearOscillatorEvidence N) :
    NonlinearOscillatorClosed N := by
  exact And.intro Ev.anharmonicOscillatorEquationClosed
    (And.intro Ev.firstIntegralEnergyClosed Ev.periodicOrbitExistenceClosed)

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse