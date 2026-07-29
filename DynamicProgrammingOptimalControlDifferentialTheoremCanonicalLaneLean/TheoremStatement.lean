import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean

def sourceRepository : String :=
  "DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean"

def sourceDescription : String :=
  "Dynamic Programming Optimal Control Differential Theorem"

def sourceTheoremBoundaryClaimBoundary : String :=
  "classical source boundary: dynamic programming optimal control differential theorem"

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository,
    theoremName := sourceRepository,
    theoremObject := sourceDescription,
    classicalBoundary := sourceTheoremBoundaryClaimBoundary,
    manifoldConstrainedStatement := "dynamic programming optimal control differential theorem closure internalized through admissible class bridge and gate",
    certificateLane := "manifold_constrained",
    carriedRemainder := "carried remainder: classical source boundary remains open"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "manifold_constrained" := by
  rfl

end DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean
end HautevilleHouse