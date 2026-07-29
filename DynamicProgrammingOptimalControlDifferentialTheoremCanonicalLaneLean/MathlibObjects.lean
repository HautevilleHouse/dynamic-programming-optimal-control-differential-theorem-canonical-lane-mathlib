import DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DynamicProgrammingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DynamicProgrammingAdmittedObject where
  space : DynamicProgrammingSpace
  optimalControlProblem : Prop
  valueFunction : Prop
  hjbEquationSatisfied : Prop
  verificationTheoremProved : Prop
  conclusion : verificationTheoremProved

structure DynamicProgrammingEndgameState where
  object : DynamicProgrammingAdmittedObject

def DynamicProgrammingWitnessClosed (O : DynamicProgrammingAdmittedObject) : Prop :=
  O.verificationTheoremProved

end DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean
end HautevilleHouse