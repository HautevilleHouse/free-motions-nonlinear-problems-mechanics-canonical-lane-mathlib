import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

structure EulerLagrangePackage where
  configurationSpace : Type u
  lagrangian : Type v
  actionFunctional : Type w
  leastActionPrinciple : Prop
  eulerLagrangeEquations : Prop
  smoothTrajectories : Prop

structure EulerLagrangeEvidence (E : EulerLagrangePackage) where
  leastActionPrincipleClosed : E.leastActionPrinciple
  eulerLagrangeEquationsClosed : E.eulerLagrangeEquations
  smoothTrajectoriesClosed : E.smoothTrajectories

def EulerLagrangeClosed (E : EulerLagrangePackage) : Prop :=
  E.leastActionPrinciple ∧ E.eulerLagrangeEquations ∧ E.smoothTrajectories

theorem euler_lagrange_closed_from_evidence
    (E : EulerLagrangePackage) (Ev : EulerLagrangeEvidence E) :
    EulerLagrangeClosed E := by
  exact And.intro Ev.leastActionPrincipleClosed
    (And.intro Ev.eulerLagrangeEquationsClosed Ev.smoothTrajectoriesClosed)

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse