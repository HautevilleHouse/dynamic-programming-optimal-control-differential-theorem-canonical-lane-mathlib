import canonicalLaneMathlib.AdmissibleClass
import DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean.OptimalControlSystem

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean

structure PontryaginMaximumPrinciplePackage (O : OptimalControlSystem) where
  costateDimension : ℕ
  Hamiltonian : O.stateSpace → O.controlSpace → ℝ → ℝ
  adjointEquation : Prop
  optimalityCondition : Prop
  transversality : Prop

structure PontryaginEvidence {O : OptimalControlSystem} (P : PontryaginMaximumPrinciplePackage O) where
  adjointEquationClosed : P.adjointEquation
  optimalityConditionClosed : P.optimalityCondition
  transversalityClosed : P.transversality

def PontryaginMaximumPrincipleClosed {O : OptimalControlSystem} (P : PontryaginMaximumPrinciplePackage O) : Prop :=
  P.adjointEquation ∧ P.optimalityCondition ∧ P.transversality

theorem pontryagin_closed_from_evidence {O : OptimalControlSystem} (P : PontryaginMaximumPrinciplePackage O) (E : PontryaginEvidence P) : PontryaginMaximumPrincipleClosed P :=
  And.intro E.adjointEquationClosed (And.intro E.optimalityConditionClosed E.transversalityClosed)

end DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean
end HautevilleHouse
