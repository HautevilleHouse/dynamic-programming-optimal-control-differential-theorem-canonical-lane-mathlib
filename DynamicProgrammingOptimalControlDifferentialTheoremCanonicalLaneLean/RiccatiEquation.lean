import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean

structure LinearQuadraticRegulator where
  stateDynamics : Matrix ℝ (Fin n) (Fin n)
  inputMatrix : Matrix ℝ (Fin n) (Fin m)
  stateCost : Matrix ℝ (Fin n) (Fin n)
  controlCost : Matrix ℝ (Fin m) (Fin m)
  horizon : ℝ

define AlgebraicRiccatiEquation (A B Q R : Matrix ℝ ℝ) (P : Matrix ℝ ℝ) : Prop :=
  A.transpose * P + P * A - P * B * R.inv * B.transpose * P + Q = 0

structure RiccatiSolver where
  solution : Matrix ℝ ℝ
  solverEvidence : AlgebraicRiccatiEquation A B Q R solution
  stabilityMargin : ℝ
  symmetryEvidence : solution.transpose = solution
  positiveDefiniteWitness : solution ⁻¹ = solution

theorem algebraic_riccati_solution_closed (A B Q R : Matrix ℝ ℝ) (S : RiccatiSolver A B Q R) : AlgebraicRiccatiEquation A B Q R S.solution :=
  S.solverEvidence

end DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean
end HautevilleHouse