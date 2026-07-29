import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean

structure OptimalControlSystem where
  stateSpace : Type u
  controlSpace : Type v
  timeHorizon : Type w
  dynamics : stateSpace → controlSpace → stateSpace
  costRate : stateSpace → controlSpace → ℝ
  terminalCost : stateSpace → ℝ
  admissibleControl : Prop
  smoothDynamics : Prop

def OptimalControlClosed (O : OptimalControlSystem) : Prop :=
  O.admissibleControl ∧ O.smoothDynamics

end DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean
end HautevilleHouse
