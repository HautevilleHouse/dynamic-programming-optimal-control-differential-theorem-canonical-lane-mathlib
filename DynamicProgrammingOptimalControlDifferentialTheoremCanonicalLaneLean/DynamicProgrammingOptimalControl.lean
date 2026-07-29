import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean

structure OptimalControlState where
  carrier : Type
  topology : TopologicalSpace carrier

data FeedbackPolicy = OpenLoop | ClosedLoop

structure ValueFunctionSpace where
  domain : OptimalControlState
  codomain : Type
  regularity : Prop

structure HamiltonJacobiBellmanEquation where
  state : OptimalControlState
  costFunctional : (OptimalControlState -> Type) -> Prop
  optimalPolicy : FeedbackPolicy
  solution : Type
  verificationTheorem : Prop

end DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean
end HautevilleHouse