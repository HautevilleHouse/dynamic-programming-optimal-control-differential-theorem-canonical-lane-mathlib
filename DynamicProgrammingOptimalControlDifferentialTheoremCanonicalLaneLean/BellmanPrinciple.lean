import canonicalLaneMathlib.AdmissibleClass
import DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean.DynamicProgrammingOptimalControl

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean

structure PrincipleOfOptimality where
  subproblemDecomposition : Prop
  recursiveSolver : Type -> Prop
  tailOptimality : Prop

structure BellmanEquationEvidence (P : PrincipleOfOptimality) where
  subproblemDecompositionClosed : P.subproblemDecomposition
  recursiveSolverClosed : P.recursiveSolver ()
  tailOptimalityClosed : P.tailOptimality

def BellmanPrincipleClosed (P : PrincipleOfOptimality) : Prop :=
  P.subproblemDecomposition ∧ P.recursiveSolver () ∧ P.tailOptimality

theorem bellman_principle_closed_from_evidence (P : PrincipleOfOptimality) (E : BellmanEquationEvidence P) : BellmanPrincipleClosed P :=
  And.intro E.subproblemDecompositionClosed (And.intro E.recursiveSolverClosed E.tailOptimalityClosed)

end DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean
end HautevilleHouse