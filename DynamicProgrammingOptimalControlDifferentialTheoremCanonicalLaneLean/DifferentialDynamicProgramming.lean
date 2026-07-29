import canonicalLaneMathlib.AdmissibleClass
import DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean.BellmanPrinciple

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean

structure DifferentialDynamicProgrammingSolver where
  localQuadraticApproximation : (state : Vector ℝ n) -> (control : Vector ℝ m) -> ℝ -> Prop
  backwardPass : (trajectory : List (Vector ℝ n)) -> List (Vector ℝ n) -> List (Float)
  forwardPass : (trajectory : List (Vector ℝ n)) -> List (Vector ℝ n) -> Float -> List (Vector ℝ n)
  convergenceCriterion : ℝ -> Prop

define DDPConvergenceEvidence (D : DifferentialDynamicProgrammingSolver) : Prop :=
  ∀ (initTraj : List (Vector ℝ n)), (initControls : List (Vector ℝ n)), (initialCost : ℝ),
    (initialCost -> ConvergenceCriterion initialCost) ->
    True

end DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean
end HautevilleHouse