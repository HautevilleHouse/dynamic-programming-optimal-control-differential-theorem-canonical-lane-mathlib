import DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean.HamiltonJacobiBellmanPDE

/-!
# Verification Theorem Package
-/

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean

structure VerificationTheoremPackage {S : StateSpacePackage} {C : ControlPackage S} {O : OptimalControlProblemPackage S C} {B : BellmanEquationPackage O} {P : PdePackage B} where
  verificationStatement : Prop
  valueFunctionIsSolution : Prop
  optimalControlConstruction : Prop

structure VerificationTheoremEvidence {S : StateSpacePackage} {C : ControlPackage S} {O : OptimalControlProblemPackage S C} {B : BellmanEquationPackage O} {P : PdePackage B} (V : VerificationTheoremPackage P) where
  verificationStatementClosed : V.verificationStatement
  valueFunctionIsSolutionClosed : V.valueFunctionIsSolution
  optimalControlConstructionClosed : V.optimalControlConstruction

def VerificationTheoremClosed {S : StateSpacePackage} {C : ControlPackage S} {O : OptimalControlProblemPackage S C} {B : BellmanEquationPackage O} {P : PdePackage B} (V : VerificationTheoremPackage P) : Prop :=
  V.verificationStatement ∧ V.valueFunctionIsSolution ∧ V.optimalControlConstruction

theorem verification_theorem_closed_from_evidence {S : StateSpacePackage} {C : ControlPackage S} {O : OptimalControlProblemPackage S C} {B : BellmanEquationPackage O} {P : PdePackage B} (V : VerificationTheoremPackage P) (E : VerificationTheoremEvidence V) : VerificationTheoremClosed V := by
  exact And.intro E.verificationStatementClosed (And.intro E.valueFunctionIsSolutionClosed E.optimalControlConstructionClosed)

end DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean
end HautevilleHouse