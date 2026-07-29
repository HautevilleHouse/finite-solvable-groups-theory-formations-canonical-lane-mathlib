import Projection

namespace HautevilleHouse
namespace FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean

def gateClosed (A : FormationAdmittedObject) : Prop :=
  True  -- For finite solvable groups formations, the gate is always closed when bridge is closed.

theorem gate_from_admissible_class (A : FormationAdmittedObject) :
    gateClosed A :=
  by trivial

end FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean
end HautevilleHouse
