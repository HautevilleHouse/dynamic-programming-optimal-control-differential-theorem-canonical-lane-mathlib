import canonicalLaneMathlib.AdmissibleClass
import DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean.OptimalControlSystem

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean

structure BellmanEquationPackage (O : OptimalControlSystem) where
  valueFunction : O.stateSpace → ℝ
  hjbEquation : O.stateSpace → ℝ → Prop
  viscositySolution : Prop
  classicalSolution : Prop

structure BellmanEquationEvidence {O : OptimalControlSystem} (B : BellmanEquationPackage O) where
  hjbSatisfied : B.hjbEquation 0 0  -- placeholder: need proper domain
  viscositySolutionClosed : B.viscositySolution
  classicalSolutionClosed : B.classicalSolution

def BellmanEquationClosed {O : OptimalControlSystem} (B : BellmanEquationPackage O) : Prop :=
  B.viscositySolution ∧ B.classicalSolution

theorem bellman_equation_closed_from_evidence {O : OptimalControlSystem} (B : BellmanEquationPackage O) (E : BellmanEquationEvidence B) : BellmanEquationClosed B :=
  And.intro E.viscositySolutionClosed E.classicalSolutionClosed

end DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean
end HautevilleHouse
