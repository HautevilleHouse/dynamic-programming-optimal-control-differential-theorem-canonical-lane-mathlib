import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean

structure HamiltonJacobiBellmanPackage where
  valueFunctionDifferentiability : Prop
  viscositySolution : Prop
  hjbEquation : Prop
  uniqueness : Prop
  regularity : Prop

structure HamiltonJacobiBellmanEvidence (HJB : HamiltonJacobiBellmanPackage) where
  valueFunctionDifferentiabilityClosed : HJB.valueFunctionDifferentiability
  viscositySolutionClosed : HJB.viscositySolution
  hjbEquationClosed : HJB.hjbEquation
  uniquenessClosed : HJB.uniqueness
  regularityClosed : HJB.regularity

def HamiltonJacobiBellmanClosed (HJB : HamiltonJacobiBellmanPackage) : Prop :=
  HJB.valueFunctionDifferentiability ∧ HJB.viscositySolution ∧
  HJB.hjbEquation ∧ HJB.uniqueness ∧ HJB.regularity

theorem hjb_closed_from_evidence (HJB : HamiltonJacobiBellmanPackage)
    (E : HamiltonJacobiBellmanEvidence HJB) : HamiltonJacobiBellmanClosed HJB := by
  exact And.intro E.valueFunctionDifferentiabilityClosed
    (And.intro E.viscositySolutionClosed
      (And.intro E.hjbEquationClosed
        (And.intro E.uniquenessClosed E.regularityClosed)))

end DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean
end HautevilleHouse