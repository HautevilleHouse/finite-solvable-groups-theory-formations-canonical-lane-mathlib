import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean.CanonicalLocalFormation

namespace HautevilleHouse
namespace FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean

def ConstrainedFormationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_formation_endgame (A : AdmissibleClass) : ConstrainedFormationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean
end HautevilleHouse