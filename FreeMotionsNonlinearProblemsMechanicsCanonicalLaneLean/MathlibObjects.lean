import FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FreeMotionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FreeMotionAdmittedObject where
  space : FreeMotionSpace
  nonlinearMechanicsModel : Prop
  freeMotionExists : Prop
  equilibriumModel : Type
  equilibriumTopology : TopologicalSpace equilibriumModel
  uniqueSolutionExists : Prop
  conclusion : uniqueSolutionExists

structure FreeMotionEndgameState where
  object : FreeMotionAdmittedObject

def FreeMotionWitnessClosed (O : FreeMotionAdmittedObject) : Prop :=
  O.uniqueSolutionExists

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse
